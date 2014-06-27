class MeetingPdf < Prawn::Document
	def initialize(meeting)
	   	super()
	   		imprimir(meeting)   	
	end

	def imprimir(meeting)
		displayImage(meeting)
		bounding_box([0, 550], :width => 550, :height => 70) do
			font "Times-Roman", :style => :bold
			font_size 18
			text "REUNIONES", :valign => :center
			transparent(0.5) { stroke_bounds }
		end
		font_size 12
		font "Times-Roman", :style => :bold
		text "\nID REUNION: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
		text meeting.id.to_s+"\n\n", :color => "4d4d4d"
   		

   		font "Times-Roman", :style => :bold
   		text "FECHA: ", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
   		text meeting.fecha.to_s + "\n\n", :color => "4d4d4d"
   		
		font "Times-Roman", :style => :bold
   		text "ASISTENTES: \n", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
   		text meeting.asistentes.upcase+"\n\n", :color => "4d4d4d"
   		
   		font "Times-Roman", :style => :bold
   		text "RESUMEN: \n" , :color => "4d4d4d"
		font "Times-Roman", :style => :normal
   		text meeting.resumen+"\n\n", :color => "4d4d4d"
   		
   		font "Times-Roman", :style => :bold
   		text "TEMA: \n", :color => "4d4d4d"
		font "Times-Roman", :style => :normal
   		text meeting.tema + "\n\n", :color => "4d4d4d"
   		
   		font "Times-Roman", :style => :bold
   		text "STAKEHOLDER: ", :color => "4d4d4d"
   		font "Times-Roman", :style => :normal
   		text meeting.stakeholder.nombre + "" + meeting.stakeholder.apellido, :color => "4d4d4d"
   		

   		start_new_page(:top_margin => 0)
	end

	def displayImage(meeting)
		image Rails.root.to_s+"/public"+ meeting.stakeholder.empresa.imagen_url, :height => 150, :position => :center, :vposition => :top
	end

end