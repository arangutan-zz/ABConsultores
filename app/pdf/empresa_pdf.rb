class EmpresaPdf < Prawn::Document

	

	def initialize(empresa, current_user)
	   	super()
	   	@current_user=current_user
   		#if @current_user.empresa != empresa
   			imprimir(empresa)
   		#end
	end

	def imprimir(empresa)
		
		displayImage(empresa)
		# bounding_box([0, 550], :width => 550, :height => 70) do
		# 	font "Times-Roman", :style => :bold
		# 	font_size 18
		# 	text "EMPRESAS", :valign => :center
		# 	transparent(0.5) { stroke_bounds }
		# end

		bounding_box([0, cursor-20], :width => 150, :height => 150) do
			if empresa.imagen_url
				image Rails.root.to_s+"/public"+ empresa.imagen_url, :width=>150, :height => 150, :position => :left
			else
				text "sin imagen", :align => :center, :valign => :center
			end
			transparent(0.5) { stroke_bounds }
		end
		
		font_size 9.5
		bounding_box([160, cursor+160], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nNOMBRE COMERCIAL: ", :color => "4d4d4d"
			font "Times-Roman", :style => :normal
			text empresa.nombre_comercial+"\n", :color => "4d4d4d" 
			transparent(0.5) {}
		end

		bounding_box([290, cursor+33], :width => 120) do
			font "Times-Roman", :style => :bold
		text "\nNIT: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text empresa.nit+"\n", :color => "4d4d4d"   	
			transparent(0.5) {}
		end

		bounding_box([420, cursor+33], :width => 120) do
			font "Times-Roman", :style => :bold
		text "\nRAZÓN SOCIAL: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text empresa.razon_social+"\n", :color => "4d4d4d"   	
			transparent(0.5) { }
		end

		#Second row

		bounding_box([160, cursor-10], :width => 130) do
			font "Times-Roman", :style => :bold
		text "\nREPRESENTANTE LEGAL: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text empresa.representante_legal+"\n", :color => "4d4d4d"
			transparent(0.5) {}
		end

		bounding_box([290, cursor+33], :width => 120) do
			font "Times-Roman", :style => :bold
		text "\nNOMBRE CONTACTO: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text empresa.nombre_contacto+"\n", :color => "4d4d4d" 	
			transparent(0.5) {}
		end

		bounding_box([420, cursor+33], :width => 120) do
				font "Times-Roman", :style => :bold
		text "\nE-MAIL CONTACTO: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text empresa.email_contacto+"\n", :color => "4d4d4d"
			transparent(0.5) {}
		end

		#Third Row


		bounding_box([160, cursor-10], :width => 130) do
			font "Times-Roman", :style => :bold
		text "\nTELÉFONO CONTACTO: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text empresa.telefono_contacto+"\n", :color => "4d4d4d" 	
			transparent(0.5) {}
		end

		bounding_box([290, cursor+33], :width => 120) do
			font "Times-Roman", :style => :bold
		text "\nDIRECCIÓN  CONTACTO: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text empresa.direccion_contacto+"\n", :color => "4d4d4d"

			transparent(0.5) {}
		end

		bounding_box([420, cursor+33], :width => 120) do
			font "Times-Roman", :style => :bold
		text "\nCIUDAD: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text empresa.ciudad+"\n", :color => "4d4d4d"
			transparent(0.5) {}
		end

		#Fourth row

		bounding_box([160, cursor-10], :width => 130) do
			font "Times-Roman", :style => :bold
		text "\nPAÍS: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text empresa.pais+"\n", :color => "4d4d4d"
		end

		bounding_box([290, cursor+33], :width => 120) do
			font "Times-Roman", :style => :bold
		text "\nPÁGINA WEB: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text empresa.pagina_web+"\n", :color => "4d4d4d"
			transparent(0.5) {}
		end

		#Fifth row

		bounding_box([160, cursor-10], :width => 130) do
			font "Times-Roman", :style => :bold
		text "\nFECHA DE CREACIÓN: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text empresa.created_at.to_s+"\n", :color => "4d4d4d"
			transparent(0.5) {}
		end

		bounding_box([290, cursor+33], :width => 120) do
			font "Times-Roman", :style => :bold
		text "\nFECHA DE EXPIRACIÓN: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text empresa.fecha_vencimiento.to_s+"\n", :color => "4d4d4d"

			transparent(0.5) {}
		end

		bounding_box([420, cursor+33], :width => 120) do
			font "Times-Roman", :style => :bold
		text "\nHABILITADO: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		if empresa.habilidato 
			text "Sí",:color => "4d4d4d"
		else  
			text "No",:color => "4d4d4d"
		end
			transparent(0.5) {}
		end

		#image Rails.root.to_s+"/public"+ empresa.imagen_url, :width=>150, :height => 150, :position => :center, :vposition => :top
	end

	def displayImage(empresa)
		image Rails.root.to_s+"/public"+ @current_user.empresa.imagen_url, :height => 150, :position => :center, :vposition => :top
	end

end