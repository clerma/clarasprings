---
layout: camp
title: Kids Camp 2026
name: Kids Camp
slider:
  overlay: 3
  images:
    - image: /assets/img/site-images/e1a3ca69-a7d2-4953-b870-4251853427e0@2x.jpg
description:
camp_details:
  title: Camp Schedule
  items:
    - 'Camp Dates: July 6–9, 2026'
    - 'Begins: 10:00 AM Monday, July 6'
    - 'Ends: 7:00 PM Thursday, July 9'
    - 'Ages: Completed 1st–6th grade'
    - 'Camp Pastor: TBA'
    - 'Music: Luke & Rachel Kerry'
what_to_expect:
  title: What to Expect
  items:
    - Worship
    - Games and outdoor fun
    - S’mores
    - Teaching focused on learning more about Jesus
    - Theme nights each evening
highlights:
  - icon: ti-heart
    text: A camp experience designed to help kids come to know Jesus
  - icon: ti-music
    text: Worship + music led by Luke & Rachel Kerry
  - icon: ti-star
    text: Fun games, s’mores, and unforgettable camp moments
  - icon: ti-world
    text: Theme nights all week
  - icon: ti-user
    text: For completed 1st–6th grade campers
tickets:
  - name: Early Registration
    price: $205
    features:
      - Register by 5/1/26
      - July 6–9, 2026 (Mon–Thurs)
      - Includes worship, activities, and theme nights
  - name: Late Registration
    price: $215
    features:
      - If not registered by 5/1/26
      - July 6–9, 2026 (Mon–Thurs)
      - Includes worship, activities, and theme nights
faqs:
  - question: What are the camp dates?
    answer: >-
      Kids Camp is July 6–9, 2026. Camp begins 10:00 AM Monday, July 6 and ends
      7:00 PM Thursday, July 9.
  - question: What ages can attend?
    answer: Kids Camp is for boys and girls who have COMPLETED 1st–6th grade.
  - question: How much does it cost?
    answer: >-
      The cost is $205. If not registered by 5/1/26, the price increases to
      $215.
  - question: When does registration open?
    answer: Registration opens January 30th.
  - question: Who is leading worship and teaching?
    answer: Camp Pastor is TBA. Music is led by Luke & Rachel Kerry.
  - question: Do adult chaperones need training?
    answer: >-
      Yes. All adult chaperones 18 or older must complete Child Protection
      Training prior to attending camp (via Lifeway) and will also be required
      to have a background check.
  - question: What are the theme nights?
    answer: >-
      Monday—Patriotic. Tuesday—Super Hero. Wednesday—Around the World/Tourist.
      Thursday—Camp T-shirt.
  - question: What do campers need to bring?
    answer: A “What to Bring” list is coming soon (per camp info page).
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
            <ul class="list-unstyled page-list mb-30">
              {% for item in page.camp_details.items %}
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
