---
layout: camp
title: 2026 Adult Day
name: Adult Day

slider:
  overlay: 3
  images:
    - image: /assets/img/site-images/5fe9b3d8-738c-4aff-a60a-0c1ed9d02b12@2x.png

description:
  - "Every May, District Eight Baptist Convention hosts Adult Day at Clara Springs."
  - "This FREE event encourages senior adults from local churches, nursing homes, assisted living, and more to join together for worship, fellowship, and food."
  - "Jake Cowley will be in concert—don’t miss this time of amazing worship, fellowship, and a meal."

camp_details:
  title: Event Details
  items:
    - "When: Thursday, May (exact date TBA)"
    - "Time: 10:00 AM – Lunch"
    - "Where: Clara Springs Worship Center"
    - "Cost: FREE"
    - "RSVP required to save your seat"

what_to_expect:
  title: What to Expect
  items:
    - Worship and fellowship with senior adults from around the district
    - Concert with Jake Cowley
    - A meal (lunch) provided
    - Community time with local churches, nursing homes, and assisted living groups

highlights:
  - icon: ti-heart
    text: A FREE day to encourage senior adults
  - icon: ti-music
    text: Jake Cowley in concert
  - icon: ti-user
    text: Fellowship with churches and senior communities
  - icon: ti-star
    text: Worship + an uplifting gathering
  - icon: ti-home
    text: Hosted at Clara Springs Worship Center

tickets:
  - name: Free Admission
    price: "$0"
    features:
      - FREE event
      - Includes worship, fellowship, and lunch
      - RSVP required to reserve your seat

faqs:
  - question: How much does Adult Day cost?
    answer: This is a FREE event.
  - question: Who is Adult Day for?
    answer: Senior adults from local churches, nursing homes, assisted living, and similar groups are invited.
  - question: What time does it start and end?
    answer: 10:00 AM through lunch.
  - question: Where is it held?
    answer: Clara Springs Worship Center.
  - question: Do I need to RSVP?
    answer: Yes. Please RSVP to the District Eight Office to save your seat.
  - question: How do I RSVP?
    answer: Call 318.352.4090 or email office@districteightmissions.com.

contact:
  phone: "318.352.4090"
  email: "office@districteightmissions.com"

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
            <h6>{{ page.checkin.title }}</h6>
            <ul class="list-unstyled page-list mb-30">
              {% for item in page.checkin.items %}
                <li>
                  <div class="page-list-icon"><span class="ti-check small-size"></span></div>
                  <div class="page-list-text"><p>{{ item }}</p></div>
                </li>
              {% endfor %}
            </ul>
          </div>

          <div class="col-md-6">
            <h6>{{ page.checkout.title }}</h6>
            <ul class="list-unstyled page-list mb-30">
              {% for item in page.checkout.items %}
                <li>
                  <div class="page-list-icon"><span class="ti-check small-size"></span></div>
                  <div class="page-list-text"><p>{{ item }}</p></div>
                </li>
              {% endfor %}
            </ul>
          </div>

          {% for policy in page.policies %}
            <div class="col-md-12">
              <h6>{{ policy.title }}</h6>
              <p>{{ policy.text }}</p>
            </div>
          {% endfor %}
        </div>
      </div>
      <div class="col-lg-4 offset-lg-1 col-md-12">
              <h6>Amenities</h6>
              <ul class="list-unstyled page-list mb-30">
                {% for amenity in page.amenities %}
                  <li>
                    <div class="page-list-icon">
                      <span class="{{ amenity.icon }}"></span>
                    </div>
                    <div class="page-list-text">
                      <p>{{ amenity.text }}</p>
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
