# Overview
Personal portfolio for [Oscar Andersson](https://oscaande.se).

# Acknowledgement
* Font used is [Gv. time by bejeletter](https://www.fontspace.com/gv-time-font-f56368), thanks.

# Build
* Make the scripts executable ``sudo chmod +x *.sh``.

# Dependencies
* Site using [UK palette](https://flatuicolors.com/palette/gb).
* [Bash colors](https://misc.flogisoft.com/bash/tip_colors_and_formatting).
* Thanks to [Sid Palas article at DevOps Directive](https://devopsdirective.com/posts/2021/04/tiny-container-image/) for the tiny docker image.

# Develop
## Create pages
Create a file in ``src/pages/`` with the extension ``html``. Insert your text in between ``<article>`` and ``</article>``. All HTML tags are excepted. Make sure to use the relative path ``resources/`` for images and NOT ``../resources/``!
## Accessability
### Microdata
Use Microdata, using [this terminology](https://schema.org/docs/full.html).
> Your web pages have an underlying meaning that people understand when they read the web pages. But search engines have a limited understanding of what is being discussed on those pages. By adding additional tags to the HTML of your web pages—tags that say, "Hey search engine, this information describes this specific movie, or place, or person, or video"—you can help search engines and other applications better understand your content and display it in a useful, relevant way. Microdata is a set of tags, introduced with HTML5, that allows you to do this. - [schema.org](https://schema.org/docs/gs.html).
[Here](https://github.com/philwareham/schema-microdata-examples/blob/main/blog.html) is an example of this in action.
### Semantic HTML5 elements
Use semantic element, read about them [here](https://www.w3schools.com/html/html5_semantic_elements.asp). Most of these are already hardcoded in the framework but it's good to know.
### Use relationship attribute for links
Use the [https://www.w3schools.com/tags/att_a_rel.asp](relationship for HTML) link tags (``<a rel="link relationship value" href="link destination">``).