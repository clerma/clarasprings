---
layout: camp
title: "2026 Kids Winter-Spring Retreat"
name: "2026 Kids Winter-Spring Retreat"
wufoo_form_hash: "z14mg9rt1iaerxb"
wufoo_username: "clarasprings"
camp_forms:
  - label: "Church Group Registration"
    wufoo_form_hash: "z14mg9rt1iaerxb"
    note: "Registering multiple campers from the same church? Email your list of names to mandi@clarasprings.com"
  - label: "Permission Form"
    url: "/assets/documents/2026_PermissionForm.pdf"
    note: "Must be turned in the day of camp"
  - label: "Spring Retreat Schedule"
    url: "/assets/documents/Winter_Retreat2026_Schedule.pdf"
  - label: "Packing List"
    url: "/assets/documents/Kids_Winter_Retreat_Packing_List.png"
slider:
  overlay: 3
  images:
    - image: /assets/img/site-images/c01ead41-f0cc-47ed-94dd-df59c563ea0d@2x.png
description:
  - We are so excited about Kids Winter—now SPRING Retreat 2026!
  - The retreat begins Friday, March 13th at 6:00 PM (starting with dinner) and ends after lunch on Saturday, March 14th at 1:00 PM. This is an overnight camp.
camp_details:
  title: Retreat Details
  items:
    - 'Dates: Friday, March 13 – Saturday, March 14, 2026'
    - 'Begins: 6:00 PM Friday, March 13 (dinner included)'
    - 'Ends: 1:00 PM Saturday, March 14'
    - 'Format: Overnight camp'
what_to_expect:
  title: What to Expect
  items:
    - Worship and Bible teaching
    - Small group time
    - Outdoor activities and games
    - Meals included
    - Overnight lodging
highlights:
  - icon: ti-heart
    text: An overnight retreat experience for kids
  - icon: ti-music
    text: Worship and engaging Bible teaching
  - icon: ti-user
    text: Small group time with trained counselors
  - icon: ti-star
    text: Fun activities and camp games
  - icon: ti-home
    text: Hosted at Clara Springs Camp & Conference Center
tickets:
  - name: Early Registration
    price: "$65"
    wufoo_form_hash: ""
    features:
      - Register by February 20, 2026
      - Friday dinner through Saturday lunch
      - All activities included
  - name: Regular Registration
    price: "$75"
    wufoo_form_hash: ""
    features:
      - After February 20, 2026
      - Friday dinner through Saturday lunch
      - All activities included
faqs:
  - question: When is the retreat?
    answer: Friday, March 13 through Saturday, March 14, 2026. Begins at 6:00 PM Friday and ends at 1:00 PM Saturday.
  - question: How much does it cost?
    answer: $65 per camper if registered by February 20. After February 20, the cost increases to $75.
  - question: Is there a permission form?
    answer: Yes. A permission form must be turned in the day of camp. Download it from the Forms & Documents section.
  - question: Is there a packing list?
    answer: Yes. Download the packing list from the Forms & Documents section below.
  - question: How do I register a church group?
    answer: Use the Church Group Registration form. After registering, email your list of camper names to mandi@clarasprings.com.
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
                {% assign label = item | split: ':' | first %}
                {% assign value = item | remove_first: label | remove_first: ':' | lstrip %}
                <li class="mb-1">
                  <strong>{{ label }}:</strong> {{ value }}
                </li>
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
        <h6>Retreat Highlights</h6>
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
