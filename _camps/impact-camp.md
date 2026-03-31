---
layout: camp
title: Impact Youth Camp 2026
name: Impact Youth Camp
slider:
  overlay: 3
  images:
    - image: /assets/img/site-images/82a4f653-1d6c-452a-a070-a31cab6e3d1a@2x.jpg
description:
camp_details:
  title: Camp Schedule
  items:
    - 'Camp Dates: July 23–25, 2026'
    - 'Begins: 11:00 AM Thursday, July 23'
    - 'Ends: TBA Saturday, July 25'
    - 'Grades: 7th–12th'
    - 'Camp Pastor: TBA'
    - 'Camp Band: Broken Vessels'
    - 'Registration opens: January 30th'
    - 'Mail-in forms address: Clara Springs Camp, 4420 HWY 177, Pelican, LA 71063'
what_to_expect:
  title: What to Expect
  items:
    - Powerful worship
    - Deep devotion times
    - Archery
    - Fishing
    - Swimming
    - Shooting range
    - Sling shots
    - Canoes
    - Games and activities
highlights:
  - icon: ti-music
    text: Powerful worship with Broken Vessels
  - icon: ti-book
    text: Deep devotion times to grow closer to God
  - icon: ti-target
    text: Archery, shooting range, and sling shots
  - icon: ti-flag
    text: Canoes, swimming, fishing, and outdoor adventure
  - icon: ti-user
    text: Designed for students in grades 7th–12th
tickets:
  - name: Early Registration
    price: $160
    wufoo_form_hash: "p1u0k2aq1viczqb"
    features:
      - Register by 5/1/26
      - July 23–25, 2026 (Thu–Sat)
      - Includes worship, devotions, and all camp activities
  - name: Late Registration
    price: $170
    wufoo_form_hash: "p1u0k2aq1viczqb"
    features:
      - If not registered by 5/1/26
      - July 23–25, 2026 (Thu–Sat)
      - Includes worship, devotions, and all camp activities
faqs:
  - question: What are the camp dates and times?
    answer: >-
      Impact Youth Camp is July 23–25, 2026. Camp begins 11:00 AM Thursday, July
      23 and ends at TBA on Saturday, July 25.
  - question: What grades can attend?
    answer: Impact Youth Camp is for students in grades 7th–12th.
  - question: How much does it cost?
    answer: >-
      The cost is $160. If not registered by 5/1/26, the price increases to
      $170.
  - question: When does registration open?
    answer: Registration opens January 30th.
  - question: Do adult chaperones need training?
    answer: >-
      Yes. All adult chaperones 18 or older must complete Child Protection
      Training (via Lifeway) and will also be required to have a background
      check.
  - question: Is there a permission form?
    answer: Yes. A permission form must be turned in the day of camp by all campers.
  - question: What activities are included?
    answer: >-
      Campers can participate in archery, fishing, swimming, shooting range,
      sling shots, canoes, and various games and activities.
wufoo_form_hash: "p1u0k2aq1viczqb"
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
