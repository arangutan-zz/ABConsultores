# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'ready page:load', ->
	$('#change_password').on 'click', ->
		
		if $(@).hasClass('abierto') 
			$(@).removeClass('abierto')
			$(@).html('Cambiar la contraseña')
			$('.clave').remove()
		else
			$(@).addClass('abierto')
			$(@).html('No cambiar la contraseña')
			$('.campos_editar_usuario').append('<div class="field clave">'+
								    	'<label for="user_Clave">Clave</label>'+
								    	'<input id="user_password" name="user[password]" type="text">'+
								    '</div>'+
								    '<div class="field clave">'+
										'<label for="user_Confirmar Clave">Confirmar clave</label>'+
										'<input id="user_password_confirmation" name="user[password_confirmation]" type="text">'+
									'</div>')