---
layout: page
title: Open Rift Valley Fever Cast
description: An open-access system to improve predicitons of RVF outbreaks.
img: assets/img/RVFCast_pic1.jpg
importance: 5
category: work
related_publications: true
---

<style>
div.caption {
  font-size: 0.6em;
}
</style>


Rift Valley fever outbreaks have proven to be exceedingly difficult to predict in time and space, yet prediction is critical to initiate prevention and mitigation activities. Links between climate oscillations (e.g. El Niño), high levels of precipitation, normalized difference vegetation index (NDVI) and RVF outbreaks and mosquito populations are the basis for models that have accurately predicted outbreaks in East Africa. RVF outbreaks in southern Africa and Madagascar have been more difficult to predict and unknown herd immunity levels is a leading theory for this. Although several tools exist to predict times and locations where environmental conditions are likely to support large RVF outbreaks, outbreaks have failed to appear when predicted in East Africa (2015-2016) and in South Africa (2021-2023).

This forecast tool was originally developed for and in collaboration with South African staekholders as the Rift Valley fever Environmental Risk Index, as like previous models, it was based primiarily on climatic conditions. To improve the sensitivity and specificity of the predictions, we have focused on:
- Integrating livestock data to represent livestock immunity.
- Including curent weather forcasts.
- Integrating global datasets so that it may be widely available.
- Creating a generalizable, open-source modeling framework for predicting Rift Valley Fever (RVF) outbreaks in Africa that is available to all follows the tenets of reproducible science.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/RVFCast_pic2.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    An example of the predictions made by the model in: Top Left: February 2010, during the widespread outbreaks across central South Africa; Top right: January 2016, during a severe drought; Bottom left: April 2018 the RVF risk at the time the farmer, whose flock was affected by an isolated RVF outbreak in 2018 (note, this was reported to the OIE in May 2018, once it was diagnosed); Bottom right: March 2022, during a period of high rainfall, which was predicted to be a period of high risk for RVF though no outbreaks occurred.
</div>

The new features of the model are being developed in the [open-rvfcast](https://github.com/ecohealthalliance/open-rvfcast) GitHub repository. 

The model, running the South African model will be hosted on a dedicated website by the Agricultural Research Council - Soil, Climate and Water.


<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/RVFCast_website.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    An example of the website hosting the model for South Africa. The website is not yet live.
</div>

This work was led by EcoHealth Alliance; the Agricultural Research Council - Soil, Climate and Water; Oak Ridge National Laboratory; The University of Tennessee, Knoxville; and One Health Consulting. It is being completed in collaboration with our South African partners: the National Institute for Communicable Diseases; the University of Pretoria; ExecuVet; and the Agricultural Research Council - Onderstepoort Veterinary Research and Economic Analysis Unit. It was/is supported by the the Reducing the Threat of Rift Valley Fever through Ecology, Epidemiology and Socio-Economics (2019-2024) project funded by DTRA and An Open Source Framework for Rift Valley Fever Forecasting (2022-2027) funded by the Wellcome Trust.
