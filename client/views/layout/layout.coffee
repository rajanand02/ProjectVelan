Template.ApplicationLayout.onCreated ->
  $(window).on 'scroll', (e) ->
    scrollRange = $(window).scrollTop()
    if scrollRange > 800
      $('.navbar').css('background-color','#333')
      $('.nav li a').css('color', '#fff')
    else
      $('.navbar').css('background-color','transparent')
      $('.nav li a').css('color', '#65490e')


  


