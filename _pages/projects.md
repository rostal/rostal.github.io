---
layout: page
title: Projects
permalink: /projects/
css:
  - /assets/css/index.css
ext-css:
  - //fonts.googleapis.com/css?family=Roboto:400,700

---

<div id="portfolio-out" class="page-section grey-section">
  <div id="portfolio">
    <div class="section-title">
      Projects
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
	    <a href="https://rostal.github.io/projects/" class="actionbtn">
    See more projects here
  </a> 
 
    </div>
  </div>
</div>
