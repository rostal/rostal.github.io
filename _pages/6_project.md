---
layout: page
title: Science Communications
permalink: /sci_comms
css:
  - /assets/css/index.css
ext-css:
  - //fonts.googleapis.com/css?family=Roboto:400,700
---

<div class="cut-buffer portfolio-buffer"></div>

<div id="portfolio-out" class="page-section grey-section">
  <div id="portfolio_comms">
    <div class="section-title">
      Science_comms
    </div>
    <div id="shinyapps-big">
      {% for app in site.data.portfolio %}
	    <div class="shinyapp">
          <a class="applink" href="{{ app.url }}">
            <img class="appimg" src="/assets/img/{{ app.img }}" />
            <div class="apptitle">{{ app.title }}</div>
            <div class="appdesc">{{ app.description }}</div>
          </a>
        </div>
	  {% endfor %}
	</div>
	    <a href="https://rostal.github.io/sci_coms" class="actionbtn">
    See more projects
  </a> 
 
    </div>
  </div>
</div>


