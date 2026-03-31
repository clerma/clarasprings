---
layout: camp
title: YAC 2026
name: YAC (Young Adult Camp)
slider:
  overlay: 3
  images:
    - image: /assets/img/site-images/5333fdbe-caaf-4201-8e94-572c481988a8@2x.jpg
description:
camp_details:
  title: Camp Schedule
  items:
    - 'Camp Dates: July 10–12, 2026'
    - 'Begins: 6:00 PM Friday, July 10'
    - 'Ends: 9:00 AM Sunday, July 12'
    - 'Ages: Graduated High School (18+) to Young Adults'
    - 'Speaker: TBA'
    - 'Worship: TBA'
what_to_expect:
  title: What to Expect
  items:
    - Worship
    - Deep Bible studies
    - Time to relax and reset
    - Meet new friends
    - Weekend getaway atmosphere
highlights:
  - icon: ti-heart
    text: A weekend to recharge, connect, and grow spiritually
  - icon: ti-book
    text: Deep Bible studies designed for young adults
  - icon: ti-music
    text: Worship (details coming soon)
  - icon: ti-user
    text: Meet new friends and build community
  - icon: ti-home
    text: A relaxed weekend away at camp
tickets:
  - name: Early Registration
    price: $120
    wufoo_form_hash: "x176ncwv08qsrl2"
    features:
      - Register by 5/1/26
      - July 10–12, 2026 (Fri–Sun)
      - Includes worship + Bible studies + camp experience
  - name: Late Registration
    price: $130
    wufoo_form_hash: "x176ncwv08qsrl2"
    features:
      - If not registered by 5/1/26
      - July 10–12, 2026 (Fri–Sun)
      - Includes worship + Bible studies + camp experience
faqs:
  - question: What are the camp dates?
    answer: >-
      YAC is July 10–12, 2026. Camp begins 6:00 PM Friday, July 10 and ends 9:00
      AM Sunday, July 12.
  - question: Who can attend?
    answer: Graduated high school students (18+) through young adults.
  - question: How much does it cost?
    answer: >-
      The cost is $120. If not registered by 5/1/26, the price increases to
      $130.
  - question: When does registration open?
    answer: Registration opens January 30th.
  - question: Who is the speaker and worship leader?
    answer: Speaker is TBA. Worship is TBA.
  - question: Do campers need to turn in a permission form?
    answer: Yes. A permission form must be turned in the day of camp by all campers.
  - question: What should I bring?
    answer: >-
      Bible, pen/pencil, journal · Tennis shoes and sandals/crocs (no flip-flops) ·
      Modest swimsuit — no 2-pieces; towel and sunscreen (shoes required to/from pool) ·
      Clothes for the duration of camp; shorts must be mid-thigh for both boys and girls;
      no spaghetti-strap or strapless tops · Modest sleepwear ·
      Sheets/blanket/sleeping bag and pillow for a twin bed · Towels and washcloths ·
      Toiletries — shampoo, soap, deodorant, toothbrush and toothpaste ·
      Insect repellant · Umbrella or raincoat · Flashlight ·
      Spending money for the gift shop · Offering money for missions ·
      Prescription medications labeled for the camp nurse.
  - question: What should I NOT bring?
    answer: >-
      Cell phones, tablets, laptops, iPods, or other electronic devices ·
      Non-prescription medications ·
      Fireworks, tobacco products, vaping products, firearms, knives, or pets ·
      2-piece swimwear, short shorts, halter tops, or spaghetti-strap/strapless tops;
      no clothing advertising tobacco, alcohol, or vulgarity ·
      Skateboards or water guns.
nav_hide: false
wufoo_form_hash: "x176ncwv08qsrl2"
wufoo_username: "clarasprings"
camp_forms:
  - label: "Church Group Registration"
    wufoo_form_hash: ""
    note: "Registering multiple campers from the same church?"
  - label: "Individual Registration (Print & Mail)"
    url: ""
  - label: "Church Group Registration (Print & Mail)"
    url: ""
  - label: "Permission Form"
    url: "/assets/documents/2026_PermissionForm.pdf"
    note: "Must be turned in the day of camp by all campers"
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
