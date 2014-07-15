# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'ready page:load', ->
	#--------------------------------------------------------------------------------------------------------#
	#IMPACTO
	$('#alto').on 'click', ->
		$('#medio').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#bajo').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_impacto').value = 'Alto' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')

	$('#medio').on 'click', ->
		$('#alto').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#bajo').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_impacto').value = 'Medio' ;
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')

	$('#bajo').on 'click', ->
		$('#medio').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#alto').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_impacto').value = 'Bajo' ;
		$()
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')

	#--------------------------------------------------------------------------------------------------------#
	#DISPOSICIÓN
	$('#hostil').on 'click', ->
		$('#cooperativo').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#competitivo').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#desconocido').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#sininteres').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_disposicion').value = 'Hostil' ; 
		document.getElementById('disposicion_text').innerHTML = 'Hostil' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')

	$('#cooperativo').on 'click', ->
		$('#hostil').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#competitivo').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#desconocido').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#sininteres').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_disposicion').value= 'Cooperativo' ; 
		document.getElementById('disposicion_text').innerHTML= 'Cooperativo' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')

	$('#competitivo').on 'click', ->
		$('#hostil').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#cooperativo').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#desconocido').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#sininteres').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_disposicion').value= 'Competitivo' ; 
		document.getElementById('disposicion_text').innerHTML= 'Competitivo' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')	

	$('#desconocido').on 'click', ->
		$('#hostil').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#cooperativo').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#competitivo').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#sininteres').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_disposicion').value= 'Desconocido' ; 
		document.getElementById('disposicion_text').innerHTML= 'Desconocido' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')	

	$('#sininteres').on 'click', ->
		$('#hostil').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#cooperativo').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#competitivo').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#desconocido').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_disposicion').value= 'Sin Interés' ; 
		document.getElementById('disposicion_text').innerHTML= 'Sin Interés' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')	

	#--------------------------------------------------------------------------------------------------------#
	#EXPECTATIVAS
	$('#latente').on 'click', ->
		$('#consolidacion').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#institucionalizado').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#desconocidoEx').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#emergente').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_expectativas').value= 'Latente' ; 
		document.getElementById('expectativas_text').innerHTML= 'Latente' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')

	$('#consolidacion').on 'click', ->
		$('#latente').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#institucionalizado').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#desconocidoEx').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#emergente').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_expectativas').value= 'En Consolidación' ; 
		document.getElementById('expectativas_text').innerHTML= 'En Consolidación' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')

	$('#institucionalizado').on 'click', ->
		$('#consolidacion').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#latente').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#desconocidoEx').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#emergente').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_expectativas').value= 'Institucionalizado' ; 
		document.getElementById('expectativas_text').innerHTML= 'Institucionalizado' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')	

	$('#desconocidoEx').on 'click', ->
		$('#consolidacion').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#institucionalizado').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#latente').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#emergente').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_expectativas').value= 'Desconocido' ; 
		document.getElementById('expectativas_text').innerHTML= 'Desconocido' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')	

	$('#emergente').on 'click', ->
		$('#consolidacion').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#institucionalizado').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#desconocidoEx').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#latente').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_expectativas').value= 'Emergente' ; 
		document.getElementById('expectativas_text').innerHTML= 'Emergente' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')	

	#--------------------------------------------------------------------------------------------------------#
	#DIMENSIÓN
	$('#influencia').on 'click', ->
		$('#responsabilidad').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#cercania').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#dependencia').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#representacion').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_dimension').value= 'Por Influencia' ;
		document.getElementById('dimension_text').innerHTML= 'Por Influencia' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')

	$('#cercania').on 'click', ->
		$('#influencia').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#responsabilidad').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#dependencia').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#representacion').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_dimension').value= 'Por Cercanía' ; 
		document.getElementById('dimension_text').innerHTML= 'Por Cercanía' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')


	$('#dependencia').on 'click', ->
		$('#influencia').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#cercania').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#responsabilidad').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#representacion').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_dimension').value= 'Por Dependencia' ; 
		document.getElementById('dimension_text').innerHTML= 'Por Dependencia' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')


	$('#representacion').on 'click', ->
		$('#influencia').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#cercania').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#dependencia').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#responsabilidad').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_dimension').value= 'Por Representación' ; 
		document.getElementById('dimension_text').innerHTML= 'Por Representación' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')


	$('#responsabilidad').on 'click', ->
		$('#influencia').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#cercania').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#dependencia').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#representacion').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_dimension').value= 'Por Responsabilidad' ; 
		document.getElementById('dimension_text').innerHTML= 'Por Responsabilidad' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')

	#--------------------------------------------------------------------------------------------------------#
	#DEPENDENCIA
	$('#depdirecta').on 'click', ->
		$('#depindirecta').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#eleccion').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#financiera').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_dependencia').value= 'Dependencia Financiera Directa' ; 
		document.getElementById('dependencia_text').innerHTML= 'Dependencia Financiera Directa' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')

	$('#depindirecta').on 'click', ->
		$('#depdirecta').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#eleccion').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#financiera').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_dependencia').value= 'Dependencia Financiera Indirecta' ; 
		document.getElementById('dependencia_text').innerHTML= 'Dependencia Financiera Indirecta' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')


	$('#eleccion').on 'click', ->
		$('#depindirecta').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#depdirecta').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#financiera').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_dependencia').value= 'Con Poco o Sin Poder de Elección' ; 
		document.getElementById('dependencia_text').innerHTML= 'Con Poco o Sin Poder de Elección' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')


	$('#financiera').on 'click', ->
		$('#depindirecta').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#eleccion').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		$('#depdirecta').removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')
		document.getElementById('stakeholder_dependencia').value= 'Dependencia No Financiera' ; 
		document.getElementById('dependencia_text').innerHTML= 'Dependencia No Financiera' ; 
		if $(@).hasClass('botonIdentificacionUnchecked')
			$(@).removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$(@).removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')


	#-------------------------------------------------------------------------------------------------------------------
	$('.relevancia-stakeholder').on 'click', ->
		$this = $(@)
		$id = $this.data('id')
		if $this.hasClass('botonIdentificacionUnchecked')
			$('.relevancecb-'+$id).prop('checked', true)
			$this.removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$('.relevancecb-'+$id).prop('checked', false)
			$this.removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')


	#-------------------------------------------------------------------------------------------------------------------
	$('.influence-stakeholder').on 'click', ->
		$this = $(@)
		$id = $this.data('id')
		if $this.hasClass('botonIdentificacionUnchecked')
			$('.influencecb-'+$id).prop('checked', true)
			$this.removeClass('botonIdentificacionUnchecked').addClass('botonIdentificacionChecked')
		else
			$('.influencecb-'+$id).prop('checked', false)
			$this.removeClass('botonIdentificacionChecked').addClass('botonIdentificacionUnchecked')