Template.ApplicationLayout.onCreated ->
  $(window).on 'scroll', (e) ->
    scrollRange = $(window).scrollTop()
    if scrollRange > 800
      $('.navbar').css('background-color','#333')
    else
      $('.navbar').css('background-color','transparent')


  


