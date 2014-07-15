class WelcomeController < ApplicationController
	layout "welcome"
	
	def index
	#User.create(email: 'superadmin', password:'1234rewq', cargo: 'developer', nombre: 'santiago', apellido: 'arango', correo_electronico: 'santiago.varon@gmail.com', telefono: '3008911930', empresa_id: '1') 
	if user_signed_in?
	 	redirect_to stakeholders_path
		end
	end
end
