---
layout: page
title: Projects
permalink: /projects/
css:
  - /assets/css/index.css
ext-css:
  - //fonts.googleapis.com/css?family=Roboto:400,700

---


  <div id="portfolio_full">

    <div id="shinyapps-big">
      {% for app in site.data.portfolio_full %}
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
