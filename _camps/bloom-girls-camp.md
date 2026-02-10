---
layout: camp
title: "Bloom Girls Camp"
name: "Bloom Girls Camp"
slider:
  overlay: 3
  images:
    - /assets/img/site-images/slider-1.jpg
    - /assets/img/site-images/slider-2.jpg
    - /assets/img/site-images/slider-3.jpg

description:
  - "Hotel non lorem ac erat suscipit bibendum nulla facilisi. Sedeuter nunc volutpat miss sapien vel conseyen turpeutionyer masin libero sevenion vusetion viventa augue sit amet hendrerit vestibulum."
  - "Interdum et malesu they adamale fames ac anteipsu pimsine faucibus curabitur arcu site feugiat in tortor in, volutpat sollicitudin libero."

checkin:
  title: "Check-in"
  items:
    - "Check-in from 9:00 AM - anytime"
    - "Early check-in subject to availability"

checkout:
  title: "Check-out"
  items:
    - "Check-out before noon"
    - "Express check-out"

policies:
  - title: "Special check-in instructions"
    text: "Guests will receive an email 5 days before arrival with check-in instructions; front desk staff will greet guests on arrival."
  - title: "Pets"
    text: "Pets are allowed."
  - title: "Children and extra beds"
    text: "Children are welcome. Kids stay free when using existing bedding."

amenities:
  - icon: "flaticon-007-tent-1"
    text: "1-3 Person Tents"
  - icon: "flaticon-005-firewood"
    text: "Free Campfire"
  - icon: "flaticon-030-camping-gas"
    text: "Camping Gas"
  - icon: "flaticon-031-pot"
    text: "Kitchen Tools"
  - icon: "flaticon-010-bedding"
    text: "Pillow and Blanket"

faqs:
  - question: "Do I have to pay right away?"
    answer: "Lorem ut nisl quam nestibulum ac quam nec odio elementum."
  - question: "Do you have waiting lists for cancellations?"
    answer: "Lorem ut nisl quam nestibulum ac quam nec odio elementum."
  - question: "At what time can I arrive?"
    answer: "Lorem ut nisl quam nestibulum ac quam nec odio elementum."
  - question: "Can I bring my dog?"
    answer: "Lorem ut nisl quam nestibulum ac quam nec odio elementum."
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
