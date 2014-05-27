jquery-imageMaxWidth
====================

Implement the max-width setting on images via javascript instead of CSS.

This is particularly needed for Firefox, which doesn't honor the max-width property when the image is 
inside an element without a fixed pixel width, making it difficult to make responsive/fluid layouts 
with user-uploaded images which may be too big and need to be scaled down, but not up.

Here's an example of how it can be used (in CoffeeScript):

```coffeescript
# Backwards compat hack for $.browser
$.browser =
  mozilla: /mozilla/.test(navigator.userAgent.toLowerCase()) && !/webkit/.test(navigator.userAgent.toLowerCase())
  webkit:  /webkit/.test(navigator.userAgent.toLowerCase())
  opera:   /opera/.test(navigator.userAgent.toLowerCase())
  msie:    /msie/.test(navigator.userAgent.toLowerCase())
  ios:     /(ipad|iphone|ipod)/.test(navigator.userAgent.toLowerCase())

# Invoke imageMaxWidth on all images inside .container, but only for Firefox or Opera
if $.browser.mozilla or $.browser.opera
  $('.container).imageMaxWidth()
```

Provided as-is by Easyworld Teaching Institute, Inc.

Contributions and attributions are welcome but not required.

Spread love through software!

