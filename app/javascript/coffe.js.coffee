# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#root_table_objekt_id').parent().hide()
  objekte = $('#root_table_objekt_id').html()
  $('#root_table_gruppe_id').change ->
    gruppen = $('root_table_gruppe_id :selected').text()
    options = $(objekte).filter("optgroup[label='#{gruppen}']").html()
    if options
      $('#root_table_objekt_id').html(options)
      $('#root_table_objekt_id').parent().show()
    else
      $('#root_table_objekt_id').empty()
      $('#root_table_objekt_id').parent().hide()

    
