---
title: The Kit Feedback
subtitle: Feedback form response
layout: page
show_sidebar: false
hide_footer: true
hide_hero: false
hero_height: hero-minHeigth
hero_darken: false
---

Thanks for your feedback!.

<p>Feedback result: <span id="feedbackResult"></span></p>

<script>
    // Step 1: Get the query string
    const queryString = window.location.search;

    // Step 2: Create a URLSearchParams object
    const urlParams = new URLSearchParams(queryString);

    // Step 3: Get the value of a specific parameter and update the page
    const nameParam = urlParams.get('feedbackMessage');
    if (nameParam) {
        // Update the page element with the parameter value
        document.getElementById('feedbackResult').textContent = nameParam;
    } else {
        // Handle the case when the parameter is not present in the URL
        document.getElementById('feedbackResult').textContent = 'Parameter not found';
    }
</script>


