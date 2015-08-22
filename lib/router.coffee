Router.configure
  layoutTemplate: 'ApplicationLayout'

Router.route '/', ->
  @render 'home'

Router.route '/signup',
  template: 'app'

  
