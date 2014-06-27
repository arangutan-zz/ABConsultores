class CompromisePdf < Prawn::Document
	def initialize(compromise)
	   	super()
	   	imprimir(compromise)
  	
	end

	def imprimir(compromise)
		displayImage(compromise)
		bounding_box([0, 550], :width => 550, :height => 70) do
			font "Times-Roman", :style => :bold
			font_size 18
			text "COMPROMISOS", :valign => :center
			transparent(0.5) { stroke_bounds }
		end
		font_size 12
		font "Times-Roman", :style => :bold
		text "\nID COMPROMISO: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text compromise.id.to_s+"\n", :color => "4d4d4d"   		

		y_position = cursor

		bounding_box([0, y_position], :width => 200,) do
			font "Times-Roman", :style => :bold
			text "\nFECHA: ", :color => "4d4d4d"
			font "Times-Roman", :style => :normal
			text compromise.fecha_inicial.to_s+"\n", :color => "4d4d4d"  
			transparent(0.5) {}
		end
		
		bounding_box([300, y_position], :width => 200) do
			font "Times-Roman", :style => :bold
			text "\nFECHA LÍMITE: ", :color => "4d4d4d"
			font "Times-Roman", :style => :normal
			text compromise.fecha_limite.to_s+"\n", :color => "4d4d4d"  

			transparent(0.5) {}
		end

		bounding_box([0, y_position-50], :width => 200,) do
			font "Times-Roman", :style => :bold
			text "\nSTAKEHOLDER: ", :color => "4d4d4d"
			font "Times-Roman", :style => :normal
			text compromise.stakeholder.nombre+ "" + compromise.stakeholder.apellido, :color => "4d4d4d"
			transparent(0.5) {}
		end
		
		bounding_box([300, y_position-50], :width => 200,) do
			font "Times-Roman", :style => :bold
			text "\nCORREO: ", :color => "4d4d4d"
			font "Times-Roman", :style => :normal
			text compromise.correo+"\n", :color => "4d4d4d"  
			transparent(0.5) {}
		end

		font "Times-Roman", :style => :bold
		text "\nCOMPROMISOS: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text compromise.compromisos+"\n\n", :color => "4d4d4d"  

   		start_new_page(:top_margin => 0)
	end

	def displayImage(compromise)
		image Rails.root.to_s+"/public"+ compromise.stakeholder.empresa.imagen_url, :height => 150, :position => :center, :vposition => :top
	end

end