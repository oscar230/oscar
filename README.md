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