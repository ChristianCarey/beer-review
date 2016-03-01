# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  # enable chosen js
  $('#beer_category_id, #beer_brewery_id, #category_id, #brewery_id').chosen
    allow_single_deselect: true
    no_results_text: 'No results matched'
    width: '200px'