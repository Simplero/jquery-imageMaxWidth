jquery-imageMaxWidth
====================

Implement the max-width setting on images via javascript instead of CSS.

This is particularly needed for Firefox, which doesn't honor the max-width property when the image is 
inside an element without a fixed pixel width, making it difficult to make responsive/fluid layouts 
with user-uploaded images which may be too big and need to be scaled down, but not up.

```coffeescript
if /mozilla/.test(navigator.userAgent.toLowerCase()) && !/webkit/.test(navigator.userAgent.toLowerCase())
  $('.container).imageMaxWidth()
```

Provided as-is by Easyworld Teaching Institute, Inc.

Contributions and attributions are welcome but not required.

Spread love through software!

