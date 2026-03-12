---
layout: camp
title: G.R.O.W Women’s Conference 2026
name: G.R.O.W Women’s Conference
subtitle: "Becoming God’s Masterpiece"
slider:
  overlay: 3
  images:
    - image: /assets/img/site-images/5fe9b3d8-738c-4aff-a60a-0c1ed9d02b12@2x.png

description:

camp_details:
  title: Event Details
  items:
    - "Dates: Friday, February 20 – Saturday, February 21, 2026"
    - "Theme: Becoming God’s Masterpiece"
    - "Host: Wallace Baptist Church"
    - "Comedian: Peppi Garrett"
    - "Speaker: Pat Domanque"
    - "Worship: Macy Cline"
    - "Registration deadline: February 2, 2026"
    - "Mission opportunity: The Gingerbread House (needs list collection)"

what_to_expect:
  title: What to Expect
  items:
    - Worship sessions led by Macy Cline
    - Guest speaker session with Pat Domanque
    - Comedian session with Peppi Garrett
    - Lodging + meal options (varies by ticket)
    - Shopping opportunity and boutique booths

highlights:
  - icon: ti-heart
    text: "Theme: Becoming God's Masterpiece"
  - icon: ti-music
    text: Worship led by Macy Cline
  - icon: ti-microphone
    text: Comedian Peppi Garrett
  - icon: ti-book
    text: Speaker Pat Domanque
  - icon: ti-gift
    text: Boutique booths + shopping opportunity

tickets:
  - name: Private Cabin + Meals (ALL BOOKED)
    price: "$119"
    features:
      - Private cabin lodging
      - Meals included
      - Status: ALL BOOKED
  - name: Shared Cabin (2 ladies) + Meals (ALL BOOKED)
    price: "$86.50/ea"
    features:
      - Shared cabin lodging (2 ladies)
      - Meals included
      - Status: ALL BOOKED
  - name: Dorm Lodging + Meals
    price: "$68"
    features:
      - Dorm lodging
      - Meals included
  - name: Dorm Lodging + Saturday Meals Only
    price: "$56"
    features:
      - Dorm lodging
      - Saturday meals only
  - name: No Lodging + 3 Meals
    price: "$54"
    features:
      - No lodging
      - 3 meals included
  - name: No Lodging + Saturday Meals Only
    price: "$41"
    features:
      - No lodging
      - Saturday meals only

faqs:
  - question: When is the conference?
    answer: Friday, February 20 through Saturday, February 21, 2026.
  - question: What is the theme?
    answer: Becoming God’s Masterpiece.
  - question: Who is speaking / leading worship?
    answer: Comedian Peppi Garrett, Speaker Pat Domanque, Worship led by Macy Cline.
  - question: What is the registration deadline?
    answer: February 2, 2026.
  - question: How do I get more information?
    answer: Email chaire@cp-tel.net or call 318-573-1113.
  - question: Are boutique booths available?
    answer: Yes. Boutique booths are available to rent. The cost is $25+ (booth rental fees will be given to the event’s designated purpose).
  - question: Is there a mission opportunity?
    answer: Yes. The mission opportunity for this event is The Gingerbread House, and items will be collected to support it (needs list provided).

contact:
  email: "chaire@cp-tel.net"
  phone: "318-573-1113"

links:
  individual_register: ""
  church_group_register: ""
  schedule: ""
  flyer: ""
  needs_list: ""

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
