---
layout: camp
title: Bloom Girls Camp
name: Bloom Girls Camp

slider:
  overlay: 3
  images:
    - image: /assets/img/site-images/5333fdbe-caaf-4201-8e94-572c481988a8@2x.jpg

description: >-
  Bloom Girls Camp is designed to help young girls grow in their faith, build lasting friendships, and discover their identity in Christ through engaging worship, biblical teaching, fun activities, and meaningful small group discussions led by trained counselors.

camp_details:
  title: Camp Details
  items:
    - Summer 2026 (Exact dates coming soon)
    - Designed for girls (specific grade levels announced soon)
    - Led by experienced camp pastors and trained counselors
    - Hosted at Clara Springs Camp & Conference Center

what_to_expect:
  title: What to Expect
  items:
    - Christ-centered worship and teaching
    - Small group discipleship and mentoring
    - Outdoor recreation and team activities
    - Evening services and campfire moments
    - A safe, structured, and encouraging environment

highlights:
  - icon: ti-heart
    text: Biblical teaching tailored for girls
  - icon: ti-music
    text: Engaging worship experiences
  - icon: ti-user
    text: Dedicated small group counselors
  - icon: ti-star
    text: Confidence-building activities
  - icon: ti-light-bulb
    text: Leadership and identity development
tickets:
    - name: Early Registration
      price: $160
      wufoo_form_hash: "pk06viz1mq9r6i"
      features:
        - Register by 5/1/26
        - July 23–25, 2026 (Thu–Sat)
        - Includes worship, devotions, and all camp activities
    - name: Late Registration
      price: $170
      wufoo_form_hash: "pk06viz1mq9r6i"
      features:
        - If not registered by 5/1/26
        - July 23–25, 2026 (Thu–Sat)
        - Includes worship, devotions, and all camp activities
faqs:
  - question: When will registration open?
    answer: Registration details and dates will be announced soon. Check back regularly or contact our office for updates.
  - question: Who can attend Bloom Girls Camp?
    answer: Bloom Girls Camp is designed for girls within the specified grade levels announced for the 2026 season.
  - question: What should campers bring?
    answer: A full packing list will be provided after registration, including clothing, toiletries, Bible, and personal essentials.
  - question: Is it safe for my child?
    answer: Safety is a top priority. All staff and counselors are trained, and structured supervision is provided throughout the week.
  - question: How do I get more information?
    answer: You can contact Clara Springs directly by phone or through our contact page for more details.
wufoo_username: "clarasprings"
camp_forms:
  - label: "Church Group Registration"
    wufoo_form_hash: "x13orro1sl4v3u"
    note: "Registering multiple campers from the same church?"
  - label: "Individual Registration (Print & Mail)"
    url: ""
  - label: "Church Group Registration (Print & Mail)"
    url: "/assets/documents/Summer_2026_Group_Reservation.pdf"
  - label: "Permission Form"
    url: "/assets/documents/2026_PermissionForm.pdf"
    note: "Must be turned in the day of camp by all campers"
nav_hide: false
---

<section class="pages section-padding" data-scroll-index="1">
  <div class="container">
    <div class="row">

      <div class="col-md-12">
        <div class="section-title">{{ page.title }}</div>
      </div>

      <div class="col-lg-7 col-md-12">

        {% for paragraph in page.description %}
          <p class="mb-30">{{ paragraph }}</p>
        {% endfor %}

        <div class="row">

          <div class="col-md-6">
            <h6>{{ page.camp_details.title }}</h6>
            <ul class="list-unstyled mb-30">
              {% for item in page.camp_details.items %}
                <li class="mb-1">{{ item }}</li>
              {% endfor %}
            </ul>
          </div>

          <div class="col-md-6">
            <h6>{{ page.what_to_expect.title }}</h6>
            <ul class="list-unstyled page-list mb-30">
              {% for item in page.what_to_expect.items %}
                <li>
                  <div class="page-list-icon">
                    <span class="ti-check small-size"></span>
                  </div>
                  <div class="page-list-text">
                    <p>{{ item }}</p>
                  </div>
                </li>
              {% endfor %}
            </ul>
          </div>

        </div>
      </div>

      <div class="col-lg-4 offset-lg-1 col-md-12">
        <h6>Camp Highlights</h6>
        <ul class="list-unstyled page-list mb-30">
          {% for highlight in page.highlights %}
            <li>
              <div class="page-list-icon">
                <span class="{{ highlight.icon }}"></span>
              </div>
              <div class="page-list-text">
                <p>{{ highlight.text }}</p>
              </div>
            </li>
          {% endfor %}
        </ul>
      </div>

    </div>
  </div>
</section>

{% include camp-pricing.html %}

<section class="section-padding bg-lightgreen">
  <div class="container">
    <div class="row">
      <div class="col-md-12 mb-30">
        <div class="section-subtitle">FAQs</div>
        <div class="section-title">Frequently Asked Questions</div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <ul class="accordion-box clearfix">
          {% for faq in page.faqs %}
            <li class="accordion block">
              <div class="acc-btn">{{ faq.question }}</div>
              <div class="acc-content">
                <div class="content">
                  <div class="text">{{ faq.answer }}</div>
                </div>
              </div>
            </li>
          {% endfor %}
        </ul>
      </div>
    </div>
  </div>
</section>
