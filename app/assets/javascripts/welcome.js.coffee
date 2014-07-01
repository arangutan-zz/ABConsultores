# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


#$(document).ready ->
#	$('#buscar').dataTable(
#		"paging":   false,
#        "info":     false
#	)

$(document).ready ->
	$('.abrir_menu').on 'click', ->
			$('.menu_general').show()

	$('.cerrar_menu').on 'click', ->
			$('.menu_general').hide()