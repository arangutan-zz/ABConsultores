# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


#$(document).ready ->
#	$('#buscar').dataTable(
#		"paging":   false,
#        "info":     false
#	)

$(document).on 'ready page:load', ->
	$('body').on 'click','.cerrar_menu', ->
		$('.menu_general').hide()

	$('body').on 'click','.abrir_menu', ->
		$('.menu_general').show()