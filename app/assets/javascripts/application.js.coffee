//= require jquery
//= require jquery-ui
//= require jquery_ujs

//= require bootstrap
//= require bootstrap_builder

//= base

//= require_tree .


initTwipsy = ->
  $("a[rel=twipsy]").tooltip trigger: "hover"


initMethods = ->
  initTwipsy()


$(document).ready ->
  initMethods()
  $('.dropdown-toggle').dropdown()
  $('.nav-tabs').button()
  $(".accordion").collapse()
  $(".alert").alert()
  $(".scrollspy").scrollspy()