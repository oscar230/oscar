# Overview
Personal portfolio for [Oscar Andersson](https://oscaande.se).

# Acknowledgement
* Font used is [Gv. time by bejeletter](https://www.fontspace.com/gv-time-font-f56368), thanks.

# Build
* Make the scripts executable ``sudo chmod +x *.sh``.

# Useful links
* Site using [UK palette](https://flatuicolors.com/palette/gb).
* [Bash colors](https://misc.flogisoft.com/bash/tip_colors_and_formatting).

# Develop
## Create pages
Create a file in ``src/pages/`` with the extension ``html``. Insert your text in between ``<article>`` and ``</article>``. All HTML tags are excepted. Make sure to use the relative path ``resources/`` for images and NOT ``../resources/``!
## Create blog posts
Create blog posts as you create pages but place them in ``src/blog-posts``. The first four (4) lines in the HTML file are reserved for metadata and should be structured as follows;
1. Name (Example: Oscar Andersson)
2. Contact info link (Example: www.google.se)
3. Language code ([ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes), 2 letter language code. Example: sv, en)
4. Date in ``YYYY-MM-DD``, according to [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html).
## Accessability
### Microdata
Use Microdata, using [this terminology](https://schema.org/docs/full.html).
> Your web pages have an underlying meaning that people understand when they read the web pages. But search engines have a limited understanding of what is being discussed on those pages. By adding additional tags to the HTML of your web pages—tags that say, "Hey search engine, this information describes this specific movie, or place, or person, or video"—you can help search engines and other applications better understand your content and display it in a useful, relevant way. Microdata is a set of tags, introduced with HTML5, that allows you to do this. - [schema.org](https://schema.org/docs/gs.html).
### Semantic HTML5 elements
Use semantic element, read about them [here](https://www.w3schools.com/html/html5_semantic_elements.asp). Most of these are already hardcoded in the framework but it's good to know.
### Use relationship attribute for links
Use the [https://www.w3schools.com/tags/att_a_rel.asp](relationship for HTML) link tags (``<a rel="link relationship value" href="link destination">``).