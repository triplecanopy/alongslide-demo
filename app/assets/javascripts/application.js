//= require jquery
//= require underscore
//= require alongslide

// Render Alongslide on DOM ready.
// 
$(function() {
  MIN_WINDOW_WIDTH = 980
  window.alongslide = new Alongslide({
    source: '#content',
    to: '#frames'
  })
  frameAspect = FixedAspect.prototype.fitFrame(MIN_WINDOW_WIDTH)
  window.alongslide.render(frameAspect, function() {
      FixedAspect.prototype.fitPanels(frameAspect)
  })
})
