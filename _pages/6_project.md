---
layout: page
title: Science Communications
permalink: /projects/6_project/
css:
  - /assets/css/index.css
ext-css:
  - //fonts.googleapis.com/css?family=Roboto:400,700
---

  <div id="portfolio_comms">

    <div id="shinyapps-big">
      {% for app in site.data.portfolio_comms %}
	    <div class="shinyapp">
          <a class="applink" href="{{ app.url }}">
            <img class="appimg" src="/assets/img/{{ app.img }}" />
            <div class="apptitle">{{ app.title }}</div>
            <div class="appdesc">{{ app.description }}</div>
          </a>
        </div>
	  {% endfor %}
	
  </div>
</div>


 
