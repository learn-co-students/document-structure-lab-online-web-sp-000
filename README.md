useful info about our webpage.

In the `head` section, we place a number of specific tags, most notably:
  - `<meta>`
  - `<link>`
  - `<title>`

Let's look at each of them in turn:

### `meta`

The `meta` tag provides metadata about the document, including what character
set to use, a description of the content, specific keywords, and the author.

Adding this metadata on the content of the page helps search engines know what
the page contains, so taking the time to include these will help bump your web
pages up in rank on relevant searches.

There is also a `viewport` method, which instructs the browser on how to control
the page's dimensions and scaling. This becomes important when adding styling,
as some mobile devices automatically scale web pages if there is not specific
setting provided.

Examples of the `<meta>` tags types we can add into our `head` section:

```html
<!-- UTF-8 is the standard for HTML5 web pages -->
<meta charset="UTF-8">

<!-- This description will appear on search engines, displayed as the summary under a web page's link -->
<meta name="description" content="A website devoted to pictures of all my favorite cats, kittens and felines">

<!-- Keywords, separated by commas, help search engine spiders in understanding page content -->
<meta name="keywords" content="cats, kittens, felines, lions, tigers">

<!-- Take credit for your work by including this author meta tag on pages you create -->
<meta name="author" content="Cat Perry">

<!-- Setting the viewport like this will ensure mobile devices don't scale content -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```

### `link`

The `<link>` tag is for importing files.
@@ -159,6 +125,7 @@ might see a series of `<link>` definitions like:
<link rel="stylesheet" type="text/css" href="engineering-department.css">
<link rel="stylesheet" type="text/css" href="project-x-launch.css">
<link rel="stylesheet" type="text/css" href="typography.css">
```

In this example we're getting some CSS information from the
[Bootstrap](https://getbootstrap.com/) project, we're integrating a company