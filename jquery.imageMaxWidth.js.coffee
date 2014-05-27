$.fn.imageMaxWidth = () ->
  this.each ->
    $container = $(this)
    images = $container.find('img:not(.image-max-width-done)').addClass('image-max-width-done').hide()
    
    # We get the max_width after having hidden all the images
    max_width = $container.width()

    images.each ->
      $image = $(this)
      img = new Image()
      img.onerror = ->
        # Image failed to load - just show it, it shouldn't be able to do much harm
        $image.show()        
      img.onload = ->
        # Image dimensions: this.height, this.width
        # Check if wider than max-width
        if this.width > max_width
          $image.css
            width:  max_width
            height: Math.round(max_width / this.width * this.height)
        $image.show()

      # load the target image and fire the callbacks
      img.src = $image.attr('src')

