beforeEach ->
  jasmine.Clock.useMock()

  spyOn($.fn, 'animate').andCallFake (properties, duration, easing, complete) ->
    $(@).css properties
    complete() if complete

    @

  @helpers =
    createSlider: (options...) =>
      @helpers.destroySlider() if @ramblingSlider

      @sliderWrapper = $ '<div id="slider-wrapper" class="theme-default"></div>'
      sliderTemplate = options[0] and options[0].sliderTemplate
      @ramblingSlider = $(if sliderTemplate then sliderTemplate else '<div id="#slider"><img src="image1.jpg" alt="image1" /><img src="image2.jpg" alt="image2" /><img src="image3.jpg" alt="image3" /></div>')
      @sliderWrapper.append @ramblingSlider
      $('body').empty().append @sliderWrapper
      if options.length
        @ramblingSlider.ramblingSlider options[0]
      else
        @ramblingSlider.ramblingSlider()

    destroySlider: =>
      @ramblingSlider.ramblingSlider 'destroy' if @ramblingSlider.data('rambling:vars')
      @ramblingSlider.data 'rambling:slider', null
      @ramblingSlider.data 'rambling:vars', null
      @ramblingSlider.remove()
      @sliderWrapper.remove()
      $('body').empty()
