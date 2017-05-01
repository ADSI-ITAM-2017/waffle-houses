# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
/*!
 * Start Bootstrap - Freelancer v3.3.7+1 (http://startbootstrap.com/template-overviews/freelancer)
 * Copyright 2013-2016 Start Bootstrap
 * Licensed under MIT (https://github.com/BlackrockDigital/startbootstrap/blob/gh-pages/LICENSE)
 */
!((o) ->
  'use strict'
  o('.page-scroll a').bind('click', (t) ->
    l = o(this)
    o('html, body').stop().animate({ scrollTop: o(l.attr('href')).offset().top - 50 }, 1250, 'easeInOutExpo')
    t.preventDefault()
    return
  )
  o('body').scrollspy(
    target: '.navbar-fixed-top'
    offset: 51)
  o('.navbar-collapse ul li a').click(->
    o('.navbar-toggle:visible').click()
    return
  )
  o('#mainNav').affix(offset: top: 100)
  o(->
    o('body').on('input propertychange', '.floating-label-form-group', (t) ->
      o(this).toggleClass 'floating-label-form-group-with-value', ! !o(t.target).val()
      return
    ).on('focus', '.floating-label-form-group', ->
      o(this).addClass 'floating-label-form-group-with-focus'
      return
    ).on 'blur', '.floating-label-form-group', ->
      o(this).removeClass 'floating-label-form-group-with-focus'
      return
    return
  )
  return
)(jQuery)
$ ->
  $('#contactForm input,#contactForm textarea').jqBootstrapValidation
    preventSubmit: true
    submitError: ($form, event, errors) ->
      # additional error messages or events
      return
    submitSuccess: ($form, event) ->
      # Prevent spam click and default submit behaviour
      $('#btnSubmit').attr 'disabled', true
      event.preventDefault()
      # get values from FORM
      name = $('input#name').val()
      email = $('input#email').val()
      phone = $('input#phone').val()
      message = $('textarea#message').val()
      firstName = name
      # For Success/Failure Message
      # Check for white space in name for Success/Fail message
      if firstName.indexOf(' ') >= 0
        firstName = name.split(' ').slice(0, -1).join(' ')
      $.ajax
        url: '././mail/contact_me.php'
        type: 'POST'
        data:
          name: name
          phone: phone
          email: email
          message: message
        cache: false
        success: ->
          # Enable button & show success message
          $('#btnSubmit').attr 'disabled', false
          $('#success').html '<div class=\'alert alert-success\'>'
          $('#success > .alert-success').html('<button type=\'button\' class=\'close\' data-dismiss=\'alert\' aria-hidden=\'true\'>&times;').append '</button>'
          $('#success > .alert-success').append '<strong>Your message has been sent. </strong>'
          $('#success > .alert-success').append '</div>'
          #clear all fields
          $('#contactForm').trigger 'reset'
          return
        error: ->
          # Fail message
          $('#success').html '<div class=\'alert alert-danger\'>'
          $('#success > .alert-danger').html('<button type=\'button\' class=\'close\' data-dismiss=\'alert\' aria-hidden=\'true\'>&times;').append '</button>'
          $('#success > .alert-danger').append '<strong>Sorry ' + firstName + ', it seems that my mail server is not responding. Please try again later!'
          $('#success > .alert-danger').append '</div>'
          #clear all fields
          $('#contactForm').trigger 'reset'
          return
      return
    filter: ->
      $(this).is ':visible'
  $('a[data-toggle="tab"]').click (e) ->
    e.preventDefault()
    $(this).tab 'show'
    return
  return
# When clicking on Full hide fail/success boxes
$('#name').focus ->
  $('#success').html ''
  return
