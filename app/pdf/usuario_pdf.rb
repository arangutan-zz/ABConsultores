class UsuarioPdf < Prawn::Document
	def initialize(usuario,current_user)
	   	super()
	   	@current_user=current_user
   		if usuario.rol != "superadmin"
   			imprimir(usuario)
   		end
	end

	def imprimir(usuario)
		displayImage(usuario)

		bounding_box([0, cursor], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nID USUARIO: ", :color => "4d4d4d"
			font "Times-Roman", :style => :normal
			text usuario.id.to_s+"\n", :color => "4d4d4d" 
			transparent(0.5) {}
		end

		bounding_box([200, cursor+41], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nUSERNAME: ", :color => "4d4d4d"
			font "Times-Roman", :style => :normal
			text usuario.username+"\n", :color => "4d4d4d"   	
			transparent(0.5) {}
		end

		bounding_box([400, cursor+41], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nNOMBRE: ", :color => "4d4d4d"
			font "Times-Roman", :style => :normal
			text usuario.nombre+"\n", :color => "4d4d4d"   	
			transparent(0.5) {}
		end

		#Second row

		bounding_box([0, cursor], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nAPELLIDO: ", :color => "4d4d4d"
			font "Times-Roman", :style => :normal
			text usuario.apellido+"\n", :color => "4d4d4d"
			transparent(0.5) {}
		end

		bounding_box([200, cursor+41], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nCORREO: ", :color => "4d4d4d"
			font "Times-Roman", :style => :normal
			text usuario.email+"\n", :color => "4d4d4d" 	
			transparent(0.5) {}
		end

		bounding_box([400, cursor+41], :width => 120) do
				font "Times-Roman", :style => :bold
			text "\nTELÉFONO: ", :color => "4d4d4d"
			font "Times-Roman", :style => :normal
			text usuario.telefono+"\n", :color => "4d4d4d"
			transparent(0.5) {}
		end

		# #Third Row

		bounding_box([0, cursor], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nCARGO: ", :color => "4d4d4d"
			font "Times-Roman", :style => :normal
			text usuario.cargo+"\n", :color => "4d4d4d" 	
			transparent(0.5) {}
		end

		bounding_box([200, cursor+41], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nEMPRESA: ", :color => "4d4d4d"
			font "Times-Roman", :style => :normal
			text usuario.empresa.nombre_comercial+"\n", :color => "4d4d4d"

			transparent(0.5) {}
		end

		bounding_box([400, cursor+41], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nROL: ", :color => "4d4d4d"
			font "Times-Roman", :style => :normal
			text usuario.rol+"\n", :color => "4d4d4d"
			transparent(0.5) {}
		end
   		
		#Fourth Row

		bounding_box([0, cursor], :width => 140) do
			font "Times-Roman", :style => :bold
			text "\nÚLTIMO ACCESO: ", :color => "4d4d4d"
			font "Times-Roman", :style => :normal
			text usuario.last_sign_in_at.to_s+"\n", :color => "4d4d4d" 	
			transparent(0.5) {}
		end

   		start_new_page(:top_margin => 0)
	end

	def displayImage(usuario)
		image Rails.root.to_s+"/public"+ @current_user.empresa.imagen_url, :height => 150, :position => :center, :vposition => :top
	end

end