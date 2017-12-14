Original source: A Github Pages template for academic websites by [Stuart Geiger](https://github.com/staeiou): [academicpages.github.io](https://github.com/academicpages/academicpages.github.io).  Academicpages was forked (then detached) by [Stuart Geiger](https://github.com/staeiou) from the [Minimal Mistakes Jekyll Theme](https://mmistakes.github.io/minimal-mistakes/), which is © 2016 Michael Rose and released under the MIT License. See LICENSE.md.  

I (Eli) forked (then detached) an edited copy of academicpages from Eric Ward.  I then tore into it and simplied it quite a bit.  I've made a number of changes and did not document along the way.  The following are some that I remember.

* I added mathjax.html to _includes folder and change the default.hmtl in _layouts folder to include that.  This specs which MathJax configs I want to.

* Added some new pages into _pages and added these to navigation using _data/navigation.yml

* Removed bullets from my publication and talks list in _pages/publications.md and _page/talks.md using css just in those pages.

* Added a two column table with css to _pages/about.md for my education.

* added a bunch of folders at the base level for publications, talks, blog_files (images and pdfs are here).

* fuzted with the site css in _sass.  Had to make changes in 3 places: _masthead.scss, _navigation.scss, and _variables.scss.

* added a pdf download for posts with changes in single.html. To use, just add pdf: [url of pdf] to the yaml in a post.

# Instructions for using my hacked version of academicpages as your website

1. Clone [eeholmes.github.io](https://github.com/eeholmes/eeholmes.github.io). 
1. Enable GitHub Pages for your repository. Go to the repository's settings (rightmost item in the tabs that start with "Code", should be below "Unwatch"). Rename the repository. If you name it [Your GitHub username].github.io", then that will be your website's URL.  Alternatively, you could name it to say [foo] and your URL would be [Your GitHub username]/foo   You'll want to specifify for pages to use master.
1. Wait a bit for jekyll to do it's stuff and go to your URL to see the website.
1. Hack away.

# Important stuff to keep in mind

My website has a blog and that blog is math heavy, has images and citations.

## Making sure math works

I write in Rmarkdown and write math in latex.  This generally works fine as long as I follow a few rules.  I use my Rmarkdown to make both markdown for GitHub Pages and PDFs.  It needs to just work across outputs straight from my Rmd file.  I don't want to be futzing with the markdown output by my Rmd, e.g. I don't want to have to paste on a yaml as needed by jekyll.  Also I don't want to be writing custom templates of mucking with pandoc templates.  That just creates something that is too custom to be portable.  I wasted 2 days trying that before deciding that was a) too much work and b) a bad idea.

* **Use GitHub flavored markdown for headings**.  Rmarkdown will understand these.  In general, just write in markdown that GitHub will understand because github_document will trash your math in ways that are really hard to fix without a lot of customization of rmarkdown templates and pandoc templates.

* To create the markdown (.md) file from rmarkdown (.Rmd) use knitr(filename).  Don't use the knit button because that calls render() and that uses pandoc.  pandoc's math latex to mathjax processor will delete the `<div>`s necessary to protect the math from jekyll.

* If there is no R code to process, then you can just upload the .Rmd file to _posts.  Make sure the file naming is correct and the yaml is correct.  See other posts for examples.

* If the post has no math/latex but has a bunch of tables from R code, like kable(), then you can use `output: github_document` in the yaml and use the gfm output.  I'm not sure if the tables from knit() will work in github.

* Only use `\begin{equation}\end{equation}` (or align, etc).  Don't use $$.  Wrap in a `<div>` to protect from jekyll.  so like so  `<div>\begin{equation}\end{equation}</div>`

* You can use \$...\$ or \\(...\\) for inline equations.  mathjax.html sets the mathjax config to allow \$...\$.  This means you need to be careful in how you use $.  You might run into trouble in code.

* Avoid using any special markdown symbols in math.  "*" is \ast, "|" is \vert.  markdown will misinterpret these as markdown and mess up your equations.  "_" is known to create problems in some jekyll sites; there is an extension setting that will turn off "_" as emphasis.

* IF you have the `\begin{equation}\end{equation}` embedded in a paragraph, for example to have a list with multiple paragraphs, then leave off the `<div>`s.  They are implicitly there already.
