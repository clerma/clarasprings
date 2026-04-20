---
layout: camp
title: Kids on Mission 2026
name: Kids on Mission
weight: 5
slider:
  overlay: 3
  images:
    - image: /assets/img/site-images/0f64d0cf-139a-4120-93da-1d7c68630a0a@2x.jpg
description:
camp_details:
  title: Camp Schedule
  items:
    - 'Camp Dates: July 13–16, 2026'
    - 'Begins: 10:00 AM Monday, July 13'
    - 'Ends: 7:00 PM Thursday, July 16'
    - 'Ages: Completed 1st–6th grade'
    - 'Camp Pastor: TBA'
    - 'Music: Luke & Rachel Kerry'
    - Registration is NOW OPEN!
    - 'Mail-in forms address: Clara Springs Camp, 4420 HWY 177, Pelican, LA 71063'
what_to_expect:
  title: What to Expect
  items:
    - Worship
    - Teaching focused on sharing Christ
    - Practical ways to live on mission at school, at home, and in everyday life
    - Games and camp activities
    - Theme nights each evening
highlights:
  - icon: ti-world
    text: Learn how to share Christ in everyday life
  - icon: ti-heart
    text: Mission-focused teaching for kids
  - icon: ti-music
    text: Worship + music led by Luke & Rachel Kerry
  - icon: ti-star
    text: Fun camp activities + theme nights
  - icon: ti-user
    text: For completed 1st–6th grade campers
tickets:
  - name: Early Registration
    price: $205
    wufoo_form_hash: xz2wzgi0xyh2tq
    features:
      - Register by 5/1/26
      - July 13–16, 2026 (Mon–Thurs)
      - Includes worship, teaching, activities, and theme nights
  - name: Late Registration
    price: $215
    wufoo_form_hash: xz2wzgi0xyh2tq
    features:
      - If not registered by 5/1/26
      - July 13–16, 2026 (Mon–Thurs)
      - Includes worship, teaching, activities, and theme nights
faqs:
  - question: What are the camp dates and times?
    answer: >-
      Kids on Mission is July 13–16, 2026. Camp begins 10:00 AM Monday, July 13
      and ends 7:00 PM Thursday, July 16.
  - question: What ages/grades can attend?
    answer: This camp is for kids who have COMPLETED 1st–6th grade.
  - question: How much does it cost?
    answer: >-
      The cost is $205. If not registered by 5/1/26, the price increases to
      $215.
  - question: When does registration open?
    answer: Registration is NOW OPEN!
  - question: Do adult chaperones need training?
    answer: >-
      Yes. All adult chaperones 18 or older must complete Child Protection
      Training (via Lifeway) and will also be required to have a background
      check.
  - question: Is there a permission form?
    answer: Yes. Please bring the permission form on the day of camp.
  - question: What are the theme nights?
    answer: >-
      Monday: Missions Monday Night (Super Hero). Tuesday: Tacky Tourist Tuesday
      (vacation t-shirt or Hawaiian shirt). Wednesday: Wacky Wednesday (NEON!).
      Thursday: Camp T-shirt.
wufoo_username: clarasprings
camp_forms:
  - label: Church Group Registration
    wufoo_form_hash: x13orro1sl4v3u
    note: Registering multiple campers from the same church?
  - label: Individual Registration (Print & Mail)
    url: ''
  - label: Church Group Registration (Print & Mail)
    url: /assets/documents/Summer_2026_Group_Reservation.pdf
  - label: Permission Form
    url: /assets/documents/2026_PermissionForm.pdf
    note: Must be turned in the day of camp by all campers
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
