# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  #$('#root_table_objekt_guid').parent().hide()
  objekte = $('#root_table_objekt_guid').html()
  #console.log(objekte)
  $('#root_table_gruppe_guid').change ->
    gruppen = $('#root_table_gruppe_guid :selected').text()
    console.log(gruppen)
    options = $(objekte).filter("optgroup[label='#{gruppen}']").html()
    if options
      $('#root_table_objekt_guid').html(options)
      $('#root_table_objekt_guid').parent().show()
    else
      $('#root_table_objekt_guid').empty()
      #$('#root_table_objekt_guid').parent().hide()
