
[hugo]: <http://gohugo.io/> "Hugo official site"
[hugoguide]: <https://gohugo.io/getting-started/quick-start/> "Hugo Quick Start"
[website]: <https://github.com/chaoscosmos/chaoscosmos.github.io> "website repo"
[weburl]: <https://chaoscosmos.github.io> "Website URL"
[ananketheme]: <https://github.com/budparr/gohugo-theme-ananke> "Ananke's theme"
[githubpages]: <https://pages.github.com/> "GitHub Pages"
[jekyll]: <https://help.github.com/articles/using-jekyll-with-pages> "Jekyll Help"


# Introduction

[GitHub pages][githubpages] is convient and easy enough for hosting your blogging website by [Jekyll][jekyll]. But if you like to generate static website using alternatives - [Hugo][hugo] for example, here is a brief.

This repository host source code for generating my static HTML pages by [Hugo][hugo].

### Website Repository
Stored in static [website repository][website].

### Website Location
[chaoscosmos.github.io][weburl]

# Way of Working

### Overview
* Install Hugo generator
* Clone source repo
* Clone website repo
* Choose a theme (optional)
* Edit posts markdown
* Deploy website/posts

#### Install Hugo

Please refer to [Hugo Quick Start][hugoguide] for details.

#### Clone Source Repo

For example:

```
$ git clone git@github.com:chaoscosmos/hugo-chaoscomos.git
```

#### CLone Website Repo

This is for storing deployed generated public static website.

For example:

```
$ git clone git@github.com:chaoscosmos/chaoscosmos.github.io.git
```

#### Using Theme (optional)

Now with all staff prepared, you are ready to create and edit your posts. But one more thing you may prefer to do - a wonderful theme - to make your website beatiful and your work easer.

For example, I'm taking [ananke's theme][ananketheme] (please give credit to the designer) as my base template.

In your working directory, e.g. `./hugo-chaoscosmos/`

```
$ mkdir themes/
$ cd themes/
$ git clone git@github.com:budparr/gohugo-theme-ananke.git
$ cd ../
```

Modify `config.toml` for building website using the theme you desired.

```
$ vim config.toml
theme = "gohugo-theme-ananke"
```


#### Edit Posts

Till now you may have a try to create your first post.

```
$ hugo new post/hello.md
```

Hugo will generate an initial markdown file. Take my example, its path will be `content/post/hello.md`. You can now edit your first post.

```
$ vim content/post/hello.md
```

To make your post ready to publish, update the attribute `draft` to `false`, e.g. `draft: false`.

#### Deploy your Website/posts

##### Test your website locally:

`$ hugo server`

Now enter [`localhost:1313`](http://localhost:1313/) in the address bar of your browser.

##### Deploy your website to [website repository][website]

Script `deploy.sh` explains how it works.


