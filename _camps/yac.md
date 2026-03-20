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
    features:
      - Register by 5/1/26
      - July 10–12, 2026 (Fri–Sun)
      - Includes worship + Bible studies + camp experience
  - name: Late Registration
    price: $130
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
      “Things to Know” and “What to Bring” are available as additional info
      (links provided on the camp page).
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

<!-- Pricing Section -->
<section class="section-padding bg-light">
  <div class="container">
    <div class="row">
      <div class="col-md-12 mb-30">
        <div class="section-subtitle">Registration</div>
        <div class="section-title">Camp Pricing</div>
      </div>

      {% for ticket in page.tickets %}
        <div class="col-md-6">
          <div class="pricing-card">
            <div class="desc text-center">
              <div class="name">{{ ticket.name }}</div>
              <div class="amount">{{ ticket.price }}</div>
              <ul class="list-unstyled list col-md-6">
                {% for feature in ticket.features %}
                  <li><i class="ti-check"></i> {{ feature }}</li>
                {% endfor %}
              </ul>
              <div class="butn-1 mt-20">
                <a href="/register/" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><span>Register Now</span></a>
              </div>
            </div>
          </div>
        </div>
      {% endfor %}

    </div>
  </div>
  <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <div id="wufoo-x176ncwv08qsrl2"> Fill out my <a href="https://clarasprings.wufoo.com/forms/x176ncwv08qsrl2">online form</a>. </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
  <script type="text/javascript"> var x176ncwv08qsrl2; (function(d, t) { var s = d.createElement(t), options = { 'userName':'clarasprings', 'formHash':'x176ncwv08qsrl2', 'autoResize':true, 'height':'1348', 'async':true, 'host':'wufoo.com', 'header':'show', 'ssl':true }; s.src = ('https:' == d.location.protocol ?'https://':'http://') + 'secure.wufoo.com/scripts/embed/form.js'; s.onload = s.onreadystatechange = function() { var rs = this.readyState; if (rs) if (rs != 'complete') if (rs != 'loaded') return; try { x176ncwv08qsrl2 = new WufooForm(); x176ncwv08qsrl2.initialize(options); x176ncwv08qsrl2.display(); } catch (e) { } }; var scr = d.getElementsByTagName(t)[0], par = scr.parentNode; par.insertBefore(s, scr); })(document, 'script'); </script>
</section>
<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Registration Form</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body ">
     <div id="wufoo-x176ncwv08qsrl2"> Fill out my <a href="https://clarasprings.wufoo.com/forms/x176ncwv08qsrl2">online form</a>. </div> <script type="text/javascript"> var x176ncwv08qsrl2; (function(d, t) { var s = d.createElement(t), options = { 'userName':'clarasprings', 'formHash':'x176ncwv08qsrl2', 'autoResize':true, 'height':'1348', 'async':true, 'host':'wufoo.com', 'header':'show', 'ssl':true }; s.src = ('https:' == d.location.protocol ?'https://':'http://') + 'secure.wufoo.com/scripts/embed/form.js'; s.onload = s.onreadystatechange = function() { var rs = this.readyState; if (rs) if (rs != 'complete') if (rs != 'loaded') return; try { x176ncwv08qsrl2 = new WufooForm(); x176ncwv08qsrl2.initialize(options); x176ncwv08qsrl2.display(); } catch (e) { } }; var scr = d.getElementsByTagName(t)[0], par = scr.parentNode; par.insertBefore(s, scr); })(document, 'script'); </script>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
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
