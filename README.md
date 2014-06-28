# Alongslide demo

This is a Rails app demonstrating integration of the [Alongslide](http://alongslide.com)
layout framework. See also the [gem source](github.com/triplecanopy/alongslide).

## Code walkthrough

- The minimal `ContentController` load Alongslide-flavored Markdown demo content
- The `index.html.erb` view uses Alongslide's Ruby text processors to generate
  HTML from the Markdown, and creates the DOM elements for the Alongslide frontend
  to write to.
- `application.js` loads the required fonts and styles asynchronously and then
  kicks off the Alongslide render in browser.
- `applications.css` sets up the bare minimum browser reset CSS for Alongslide
  to function.
- `config/demo.md` and `demo.css` are strictly demo content.
- `application.rb` precompiles `demo.css` separately so that it can be loaded
  via Ajax.
