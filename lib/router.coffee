Router.configure({
  layoutTemplate: 'layout'
})
Router.route '/', ->
  @render 'home'

Router.route '/signup', ->
  @render 'login'
