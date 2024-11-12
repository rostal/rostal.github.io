---
layout: page
title: Open Rift Valley fever Cast
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

<img src="/assets/img/RVFCast_pic2.jpg" align="right" width="300px"/>

In this work we focus on designing systems for One Health research, from data design to data management to data analysis using joint inference. 



Regarding study design, epidemiological methods assume that individuals or clusters are selected with a probability to population size. If population size and density between species (e.g. people and livestock) are not correlated or is unknown, then selecting one population will reduce or even negate the representativeness of the survey in another species.

Ecological study designs often result in less representative data at the population level because the population size and density of many wild species is not known. We developed a solution that integrates epidemiological and ecological study designs to improve representativeness of One Health studies of zoonotic diseases. 

We used a systematic approach by applying a grid of geographic points over the study area to systematically sample the populations while providing for post-hoc weighting of each individual population by density.

Data collection systems, quality assurance processes and integration vary across fields making it challenging to integrate One Health data within and between projects. 

One Health data collected on different populations often use different methods and later need to be cleaned and integrated in a standardized way. To do this, we developed an R package, [ohcleandat](https://ecohealthalliance.github.io/ohcleandat) (One Health cleaning and data management system). 

To support reproducibility, we used a targets workflow using the targets package (all in the R programming language) with the mechanics of ETL (Extract, Transform and Load) largely handled by the ohcleandat R package to manage the significant data repository, package. The underlying philosophy of the ETL process is the original data are only lightly modified (stripping white spaces, column names to snake case, etc.) while members of the project team make decisions about what data require cleaning and how they are to be cleaned. This is achieved by maintaining a validation log that keeps a record of all changes made and automates the process once the reviewer indicates a change must be made. Changes made in logs are applied to the data before they are integrated into various larger work packages. Those work packages are then deposited into Zenodo to create versioned single sources of truth with digital object identifiers.


<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/RVFCast_website.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    The data management, cleaning and archiving workflow used by the ohcleandat package. 
    <a href="[https://ropensci.org/blog/2024/09/17/deposits-in-the-wild/]">Figure by Collin Schwantes!</a>.
</div>

This work was led by EcoHealth Alliance; the Agricultural Research Council - Soil, Climate and Water; Oak Ridge National Laboratory; The University of Tennessee, Knoxville; and One Health Consulting. It is being completed in collaboration with our South African partners: the National Institute for Communicable Diseases; the University of Pretoria; ExecuVet; and the Agricultural Research Council - Onderstepoort Veterinary Research and Economic Analysis Unit. It was/is supported by the the Reducing the Threat of Rift Valley Fever through Ecology, Epidemiology and Socio-Economics (2019-2024) project funded by DTRA and An Open Source Framework for Rift Valley Fever Forecasting (2022-2027) funded by the Wellcome Trust.
