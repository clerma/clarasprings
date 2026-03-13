---
layout: camp
title: 2026 Adult Day
name: Adult Day
description: >-
  Free senior adult gathering at Clara Springs featuring worship, fellowship,
  lunch, and a concert with Jake Cowley.
slider:
  overlay: 3
  images:
    - image: /assets/img/site-images/402007d9-14b4-4cd8-936c-aeecc0929293.jpg
body_content:
  - >-
    Adult Day is a special gathering for senior adults from around the district
    to come together for worship, encouragement, and fellowship.
  - >-
    Guests will enjoy a concert with Jake Cowley, a shared meal, and meaningful
    time with churches and senior communities from across the area.
camp_details:
  title: Event Details
  items:
    - 'When: Thursday, May (exact date TBA)'
    - 'Time: 10:00 AM – Lunch'
    - 'Where: Clara Springs Worship Center'
    - 'Cost: FREE'
    - RSVP required to save your seat
what_to_expect:
  title: What to Expect
  items:
    - Worship and fellowship with senior adults from around the district
    - Concert with Jake Cowley
    - A meal (lunch) provided
    - >-
      Community time with local churches, nursing homes, and assisted living
      groups
highlights:
  - icon: ti-heart
    text: A FREE day to encourage senior adults
  - icon: ti-music
    text: Jake Cowley in concert
  - icon: ti-user
    text: Fellowship with churches and senior communities
  - icon: ti-star
    text: Worship and an uplifting gathering
  - icon: ti-home
    text: Hosted at Clara Springs Worship Center
tickets:
  - name: Free Admission
    price: $0
    features:
      - FREE event
      - Includes worship, fellowship, and lunch
      - RSVP required to reserve your seat
faqs:
  - question: How much does Adult Day cost?
    answer: This is a FREE event.
  - question: Who is Adult Day for?
    answer: >-
      Senior adults from local churches, nursing homes, assisted living, and
      similar groups are invited.
  - question: What time does it start and end?
    answer: 10:00 AM through lunch.
  - question: Where is it held?
    answer: Clara Springs Worship Center.
  - question: Do I need to RSVP?
    answer: Yes. Please RSVP to the District Eight Office to save your seat.
  - question: How do I RSVP?
    answer: Call 318.352.4090 or email office@districteightmissions.com.
contact:
  phone: 318.352.4090
  email: office@districteightmissions.com
nav_hide: false
---
<section class="pages section-padding" data-scroll-index="1">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">{{ page.title }}</div>
      </div>

      <div class="col-lg-7 col-md-12">
        {% for paragraph in page.body_content %}
          <p class="mb-30">{{ paragraph }}</p>
        {% endfor %}

        <div class="row">
          <div class="col-md-6">
            <h6>{{ page.camp_details.title }}</h6>
            <ul class="list-unstyled page-list mb-30">
              {% for item in page.camp_details.items %}
                <li>
                  <div class="page-list-icon"><span class="ti-check small-size"></span></div>
                  <div class="page-list-text"><p>{{ item }}</p></div>
                </li>
              {% endfor %}
            </ul>
          </div>

          <div class="col-md-6">
            <h6>{{ page.what_to_expect.title }}</h6>
            <ul class="list-unstyled page-list mb-30">
              {% for item in page.what_to_expect.items %}
                <li>
                  <div class="page-list-icon"><span class="ti-check small-size"></span></div>
                  <div class="page-list-text"><p>{{ item }}</p></div>
                </li>
              {% endfor %}
            </ul>
          </div>
        </div>
      </div>

      <div class="col-lg-4 offset-lg-1 col-md-12">
        <h6>Event Highlights</h6>
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
