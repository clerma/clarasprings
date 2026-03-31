---
layout: camp
title: Pre-Camp 2026
name: Pre-Camp

slider:
  overlay: 3
  images:
    - image: /assets/img/site-images/5fe9b3d8-738c-4aff-a60a-0c1ed9d02b12@2x.png

description:
  - Camp begins at 5:00 PM on July 3, 2026 and ends at 1:00 PM on July 4, 2026.
  - This one-night introductory camp is designed to give young campers a fun, safe, and confidence-building first camp experience.
  - Pre-Camp offers age-appropriate activities, engaging worship, and time with trained Clara Springs staff in a structured and encouraging environment.
  - It is the perfect way for first-time campers to become comfortable with camp before attending longer summer sessions.

camp_details:
  title: Camp Schedule
  items:
    - Check-in begins at 5:00 PM on July 3, 2026
    - Parents must check campers in personally
    - Check-out is at 1:00 PM on July 4, 2026
    - Parents must present ID for pickup

what_to_expect:
  title: What to Expect
  items:
    - Age-appropriate worship and Bible teaching
    - Small group time with trained counselors
    - Outdoor recreation and team activities
    - Meals included
    - Safe indoor lodging

highlights:
  - icon: ti-heart
    text: A gentle introduction to overnight camp
  - icon: ti-user
    text: Caring and trained camp staff
  - icon: ti-music
    text: Worship designed for younger campers
  - icon: ti-star
    text: Confidence-building activities
  - icon: ti-home
    text: Structured and supervised environment

tickets:
  - name: Early Registration
    price: "$60"
    wufoo_form_hash: "pnkt4lf0fh2aaa"
    features:
      - Register before May 1, 2026
      - Includes all meals and activities
      - One-night camp experience
  - name: Regular Registration
    price: "$70"
    wufoo_form_hash: "pnkt4lf0fh2aaa"
    features:
      - After May 1, 2026
      - Includes all meals and activities
      - One-night camp experience

faqs:
  - question: What ages can attend Pre-Camp?
    answer: Pre-Camp is designed as an introductory experience for younger children who may not yet be ready for a full week of camp.
  - question: What should my camper bring?
    answer: A detailed packing list will be emailed to parents prior to camp.
  - question: Is financial assistance available?
    answer: Please contact the Clara Springs office to inquire about available assistance options.
  - question: Can parents stay on campus during Pre-Camp?
    answer: Pre-Camp is a drop-off program. Parents are not required to stay overnight.

wufoo_form_hash: "pnkt4lf0fh2aaa"
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
