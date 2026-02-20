---
layout: camp
title: "2026 Kids Winter-Spring Retreat"
name: "2026 Kids Winter-Spring Retreat"

slider:
  overlay: 3
  images:
    - /assets/img/site-images/slider-1.jpg
    - /assets/img/site-images/slider-2.jpg
    - /assets/img/site-images/slider-3.jpg

description: "Camp begins at 5:00 PM on July 3, 2026 and ends at 1:00 PM on July 4, 2026. This one-night introductory camp is designed to give young campers a fun and safe first camp experience.Pre-Camp offers a full schedule of age-appropriate activities, worship, and time with trained camp staff. It is a great way for first-time campers to get comfortable with Clara Springs before attending longer summer camps."

checkin:
  title: "Check-in"
  items:
    - "Check-in begins at 5:00 PM on July 3, 2026"
    - "Early check-in is not available for Pre-Camp"
    - "Parents must check in campers in person"

checkout:
  title: "Check-out"
  items:
    - "Check-out is at 1:00 PM on July 4, 2026"
    - "Parents must present ID to check out a camper"

# You said you prefer a centralized policy page, so we include only required structure.
policies:
  - title: "General Policy"
    text: "Campers and parents will receive complete instructions by email before arrival."

amenities:
  - icon: "flaticon-007-tent-1"
    text: "Age-Appropriate Activities"
  - icon: "flaticon-005-firewood"
    text: "Worship & Small Group Time"
  - icon: "flaticon-030-camping-gas"
    text: "Camp Staff Leadership"
  - icon: "flaticon-031-pot"
    text: "Meals Included"
  - icon: "flaticon-010-bedding"
    text: "Indoor Lodging Provided"

tickets:
  - name: "Pre-Camp Registration"
    price: 60
    features:
      - "Early Registration Rate: $60 (before May 1)"
      - "Regular Rate: $70 (after May 1)"
      - "Includes all meals and activities"
      - "One-night camp experience"

faqs:
  - question: "What ages can attend Pre-Camp?"
    answer: "Pre-Camp is designed as an introductory camp for younger children who are not yet ready for week-long summer camps."
  - question: "What should my camper bring?"
    answer: "A packing list will be emailed to parents prior to camp."
  - question: "Is financial assistance available?"
    answer: "Contact the Clara Springs office to inquire about available assistance."
  - question: "Can parents stay on campus during Pre-Camp?"
    answer: "Pre-Camp is a drop-off program; parents are not required to stay overnight."

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
