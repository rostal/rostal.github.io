---
layout: base
title: "One Health Research | One Health solutions for complex problems"
css:
  - /assets/css/index.css
ext-css:
  - //fonts.googleapis.com/css?family=Roboto:400,700
js:
  - /assets/js/index.js
ext-js:
  - //cdn.jsdelivr.net/npm/particles.js@2.0.0/particles.min.js
---


<div id="header" class="cut1" markdown="1">

<div id="header-inner" markdown="1">

# One Health Research Consulting {#title}

## One Health solutions for complex problems {#subtitle}

<a href="/contact" class="actionbtn">
  <span class="far fa-envelope" aria-hidden="true"></span>
  Contact Us
</a>
{: .actionbtn-out :}

</div>

<div id="particles-js"></div>

</div>

<div id="main-sections">

<div id="services-out" class="page-section cut1">
  <div id="services">
    <div class="section-title">What We Offer</div>
    <div id="services-list">
      <div class="service">
        <img class="service-img" alt="Service image" src="/assets/img/scale-flexiple/icon_services.png" />
        <div class="service-text">Designing One Health programs</div>
      </div>
      <div class="service">
        <img class="service-img" alt="Service image" src="/assets/img/scale-flexiple/icon_VBDs.png" />
        <div class="service-text">Epidemiology of vector-borne pathogens</div>
      </div>
	    
      <div id="services-break"></div>
      <div class="service">
        <img class="service-img" alt="Service image" src="/assets/img/scale-flexiple/icon_network.png" />
        <div class="service-text">Building One Health collaborations</div>
      </div>
      <div class="service">
        <img class="service-img" alt="Service image" src="/assets/img/scale-flexiple/icon_training.png" />
        <div class="service-text">Trainings: epidemiology and One Health</div>
      </div>
    </div>

    <a href="/contact" class="actionbtn">
      <span class="far fa-envelope" aria-hidden="true"></span>
      Contact Us
    </a>
  </div>
</div>

<div class="cut-buffer aboutus-buffer"></div>

<div id="aboutus-out" class="page-section grey-section cut2">
  <div id="aboutus">
    <div class="section-title">About Us</div>
    <div id="aboutus-text">
      One Health Research Consulting was launched in 2024 to provide innovative One Health guidance and  as the world's <b>first</b> Shiny consulting firm. The goal was simple: provide a one-stop shop for any and all of your Shiny needs, while adhering to the <b>highest standards</b>. Today, AttaliTech is a <b>global leader</b> in providing top quality R/Shiny services and is trusted by over 100 companies worldwide. We take pride in knowing you won't get better quality anywhere else.<br/><br/><b>We're certain of it.</b>
    </div>
  </div>
</div>

<div class="cut-buffer values-buffer"></div>

<div id="values-out" class="page-section cut2">
  <div id="values">
	  <div class="section-title">Our Values</div>
    <div id="values-text">
      Zoonotic diseases are complex systems that require integrated responses. We use our expertise in building strong, multidisciplinary coalitions and bring a scientific One Health approach to solving zoonotic threats. 

     We believe in <b>collaboration</b>, building trust though open and equal partnerships. Bringing <b>scientific excellence</b> to deliver exceptional, rigorous and evidence-based solutions using a One Health approach. We focus on aspects of disease ecology and epidemiology that be used to support and improve veterinary, environmental and public health <b>policy</b>.
    </div>
    <a href="/contact" class="actionbtn">
      Work With Us
    </a>
  </div>
</div>

<div id="clients-out" class="page-section cut1">
  <div id="clients">
    <div class="section-title">Clients</div>
    <div id="clients-subtitle">Clients range from startups to universities to Fortune 500 companies</div>
    <div id="client-logos">
      {% for client in site.data.clients %}
        <a class="client-img" href="{{ client.url }}" title="{{ client.name }}">
          <img alt="{{ client.name }}" src="/assets/img/logos/{{ client.img }}" />
        </a>
      {% endfor %}
    </div>
  </div>
</div>

<div class="cut-buffer"></div>

<div id="aboutme-section-out" class="page-section grey-section cut2">
  <div id="aboutme-section">
    <div class="section-title">About the Founder</div>
	<div id="aboutme-list" markdown="1">
{% for info in site.data.main_info %}
{% if info.icon %}<span class="about-icon fa-fw {{ info.icon }}" aria-hidden="true"></span>{% endif info.icon %}
<span class="about-content">{{ info.content }}</span>
{: .about-text }
{% endfor %}
</div>
  </div>
</div>

<div class="cut-buffer portfolio-buffer"></div>

<div id="portfolio-out" class="page-section grey-section">
  <div id="portfolio">
    <div class="section-title">
      Open-Sourced Shiny Apps
    </div>
    <div id="shinyapps-big">
      {% for app in site.data.portfolio %}
	    <div class="shinyapp">
          <a class="applink" href="{{ app.url }}">
            <img class="appimg" src="/assets/img/screenshots/{{ app.img }}" />
            <div class="apptitle">{{ app.title }}</div>
            <div class="appdesc">{{ app.description }}</div>
          </a>
        </div>
	  {% endfor %}
    </div>
  </div>
</div>

<div id="cta-out" class="page-section">
  <div id="cta">
    <div class="section-title">Take Your Shiny Apps to the Highest Level</div><br/>
  </div>
  <a href="/contact" class="actionbtn">
    <span class="far fa-envelope" aria-hidden="true"></span>
    Contact Us
  </a>
</div>

</div>
