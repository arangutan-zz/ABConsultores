class TemasregulatorioPdf < Prawn::Document
	def initialize(temasregulatorio,current_user)
	   	super()
	   	@current_user=current_user
	   	imprimir(temasregulatorio)
	end

	def imprimir(temasregulatorio)
		displayImage(temasregulatorio)
		bounding_box([0, 550], :width => 550, :height => 70) do
			font "Times-Roman", :style => :bold
			font_size 18
			text "TEMAS REGULATORIOS", :valign => :center
			transparent(0.5) { stroke_bounds }
		end
		font_size 12
		font "Times-Roman", :style => :bold
		text "\nID TEMA REGULATORIO: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text temasregulatorio.id.to_s+"\n", :color => "4d4d4d"   		

		font "Times-Roman", :style => :bold
		text "\nSTAKEHOLDER: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text temasregulatorio.stakeholder.nombre+""+temasregulatorio.stakeholder.apellido+"\n", :color => "4d4d4d"   				

		font "Times-Roman", :style => :bold
		text "\nRESUMEN: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text temasregulatorio.resumen+"\n", :color => "4d4d4d"   

		font "Times-Roman", :style => :bold
		text "\nTEMA: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text temasregulatorio.titulo+"\n", :color => "4d4d4d"   

		y_position = cursor

		bounding_box([0, y_position], :width => 200,) do
			font "Times-Roman", :style => :bold
			text "\nARCHIVO ", :color => "4d4d4d"
			font "Times-Roman", :style => :normal
			text temasregulatorio.imagen_url+"\n", :color => "4d4d4d"  
			transparent(0.5) {}
		end
		
		bounding_box([300, y_position], :width => 200) do
			font "Times-Roman", :style => :bold
			text "\nFECHA DE CREACIÓN: ", :color => "4d4d4d"
			font "Times-Roman", :style => :normal
			text temasregulatorio.created_at.to_s+"\n", :color => "4d4d4d"  

			transparent(0.5) {}
		end

   		start_new_page(:top_margin => 0)
	end

	def displayImage(temasregulatorio)
		image Rails.root.to_s+"/public"+ @current_user.empresa.imagen_url, :height => 150, :position => :center, :vposition => :top
	end

end