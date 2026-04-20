---
layout: camp
title: Fourth Friday Fish Fry
name: Fourth Friday Fish Fry
slider:
  overlay: 3
  images:
    - image: /assets/img/site-images/b84f9f0a-07f9-4c13-8c8a-8f58c7bb2b8d@2x.png
description: >-
  Come enjoy a great time of fellowship at the Fourth Friday Fish Fry. Clara
  Springs hosts this event every month except July, November, and December —
  meet fellow believers from across Louisiana, tour the camp grounds, and visit
  the Gift Shop.
camp_details:
  title: Event Details
  items:
    - 'Time: Serving begins at 5:00 PM'
    - 'Cost (Adults): $15'
    - 'Cost (Kids 10–15): $10'
    - 'Cost (Kids 9 & under): FREE'
    - >-
      Payment: Personal checks, cash, and most major credit cards (credit card
      fee applies)
what_to_expect:
  title: What to Expect
  items:
    - A delicious fish fry meal
    - Fellowship with believers from across Louisiana
    - Tour of the camp grounds
    - Visit to the Gift Shop
highlights:
  - icon: ti-heart
    text: Monthly fellowship event open to everyone
  - icon: ti-user
    text: Connect with believers from all over Louisiana
  - icon: ti-home
    text: Tour Clara Springs camp grounds
  - icon: ti-gift
    text: Visit the camp Gift Shop
  - icon: ti-star
    text: Family-friendly — kids 9 and under eat FREE
schedule:
  - month: January
    host: Fairview Baptist
    note: Cancelled due to weather
  - month: February
    host: Westside Baptist
  - month: March
    host: FBC Robeline
  - month: April
    host: Grand Cane Baptist
  - month: May
    host: Martin Baptist
  - month: June
    host: FBC Coushatta
  - month: July
    note: NO Fish Fry in July
  - month: August
    host: FBC Mansfield
  - month: September
    host: FBC Zwolle
  - month: October
    host: Salem Baptist
faqs:
  - question: How much does the Fish Fry cost?
    answer: Adults $15, Kids 10–15 $10, Kids 9 and under are FREE.
  - question: What forms of payment are accepted?
    answer: >-
      Personal checks, cash, and most major credit cards (credit card fee
      applies).
  - question: What time does it start?
    answer: We start serving at 5:00 PM.
  - question: How often does the Fish Fry happen?
    answer: Every Fourth Friday of the month except July, November, and December.
  - question: Who hosts the Fish Fry each month?
    answer: >-
      Each month is hosted by a different local church. See the 2026 schedule
      for the full list.
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

        {% if page.schedule %}
        <h6>2026 Dates &amp; Hosts</h6>
        <ul class="list-unstyled mb-30">
          {% for s in page.schedule %}
            <li class="mb-1">
              <strong>{{ s.month }}:</strong>
              {% if s.host %}{{ s.host }}{% endif %}
              {% if s.note %}<em>{{ s.note }}</em>{% endif %}
            </li>
          {% endfor %}
        </ul>
        {% endif %}

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
