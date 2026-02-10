# frozen_string_literal: true
require "jekyll"

module Jekyll
  module SmartCollections
    module_function

    def log(level, msg)
      case level
      when :info  then Jekyll.logger.info  "SmartCollections:", msg
      when :warn  then Jekyll.logger.warn  "SmartCollections:", msg
      when :error then Jekyll.logger.error "SmartCollections:", msg
      else             Jekyll.logger.info  "SmartCollections:", msg
      end
    end

    def run!(site)
      log(:info, "begin")
      log(:info, "collections: #{site.collections.keys.sort.join(', ')}")
      log(:info, "data keys: #{site.data.keys.sort.join(', ')}")

      pointers_before = count_pointers(site.data)
      log(:info, "found #{pointers_before} pointer(s) in site.data")

      expand_tree!(site.data, site)

      pointers_after = count_pointers(site.data)
      log(:info, "expansion done. remaining pointers: #{pointers_after}")
    end

    def count_pointers(node)
      base = (node.is_a?(Hash) && node.key?("_collection")) ? 1 : 0
      case node
      when Hash  then base + node.values.map { |v| count_pointers(v) }.sum
      when Array then base + node.map { |v| count_pointers(v) }.sum
      else base
      end
    end

    def expand_tree!(node, site)
      case node
      when Hash
        node.keys.each do |k|
          v = node[k]
          if pointer?(v)
            node[k] = expand_pointer(v, site)
          else
            expand_tree!(v, site)
          end
        end
      when Array
        node.map!.with_index do |el, _|
          if pointer?(el)
            expand_pointer(el, site)
          else
            expand_tree!(el, site)
            el
          end
        end
        node.flatten!(1)
      end
      node
    end

    def pointer?(val)
      val.is_a?(Hash) && val.key?("_collection")
    end

    def expand_pointer(ptr, site)
      coll_name = ptr["_collection"].to_s
      coll_obj  = site.collections[coll_name]

      docs =
        if coll_obj && coll_obj.respond_to?(:docs)
          coll_obj.docs.dup
        else
          []
        end

      if docs.empty?
        log(:warn, "collection '#{coll_name}' not found or has 0 docs")
        return []
      end

      docs = apply_where(docs, ptr["where"]) if ptr["where"]

      if (sf = ptr["sort_by"])
        docs.sort_by! { |d| fetch(d, sf) }
        docs.reverse! if ptr["order"].to_s.downcase == "desc"
      end

      docs = docs.first(ptr["limit"].to_i) if ptr["limit"]

      out =
        if (map = ptr["map"]).is_a?(Hash)
          docs.map do |d|
            url = safe_url(d)
            next if url.nil?

            map.each_with_object({}) do |(out_key, src_field), h|
              h[out_key.to_s] =
                src_field.to_s == "url" ? url : fetch(d, src_field)
            end
          end.compact
        else
          docs.map do |d|
            url = safe_url(d)
            next if url.nil?

            {
              "name" => fetch(d, "title") || fetch(d, "name"),
              "url"  => url
            }
          end.compact
        end

      log(:info, "expanded '#{coll_name}' to #{out.size} item(s)")
      out
    end

    def apply_where(docs, where)
      case where
      when Hash
        where.each do |k, v|
          docs.select! { |d| normalize(fetch(d, k)) == normalize(v) }
        end
      when Array
        where.each do |k, v|
          docs.select! { |d| normalize(fetch(d, k)) == normalize(v) }
        end
      end
      docs
    end

    def fetch(doc, key)
      return nil unless doc.respond_to?(:data)
      doc.data[key.to_s] || doc.data[key.to_sym]
    end

    # 🔒 SAFE URL RESOLUTION — THIS IS THE FIX
    def safe_url(doc)
      return nil unless doc.respond_to?(:url)

      url = doc.url
      return nil if url.nil?
      return nil if url.include?(":title")
      return nil if url.strip == "/"

      url
    end

    def normalize(x)
      case x
      when true, "true", "True", "TRUE", 1, "1" then :t
      when false, "false", "False", "FALSE", 0, "0", nil then :f
      else x
      end
    end
  end
end

class Jekyll::SmartCollectionsGenerator < Jekyll::Generator
  safe true
  priority :low

  def generate(site)
    Jekyll::SmartCollections.run!(site)
  end
end
