---
layout: page
title: Science communication
description: Booklets and articles for the public.
img: assets/img/Sci_comm_pic1.jpg
importance: 5
category: work
related_publications: true
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
	    <a href="https://rostal.github.io/projects/6_project" class="actionbtn">
    See more projects
  </a> 
 
    </div>
  </div>
</div>

#From resume.md
#<div style="display: flex; justify-content: center; width: 100%; max-width: 1200px; margin: 0 auto;">
#    <a href="{{ site.baseurl }}/assets/img/Rostal_Resume_2024.pdf" download>
#        <img src="{{ site.baseurl }}/assets/img/Rostal_Resume_2024.png" alt="Resume" style="width: 100%; max-width: 1000px; height: auto;">
#    </a>
</div>
