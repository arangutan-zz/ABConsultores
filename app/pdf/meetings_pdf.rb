class MeetingsPdf < Prawn::Document
	def initialize(meetings,current_user)
	   	super()
	   	@current_user=current_user

	   	imprimir(meetings.first)

	   	meetings.drop(1).each do |meeting|
	   		start_new_page(:top_margin => 40)
	   		imprimir(meeting)
	   	end
	end

	def imprimir(meeting)
		displayImage(meeting)

		font "Times-Roman", :style => :bold
		fill_color '747474'
		fill_rectangle [10, 590], 520, 30
		font_size 13
		text_box "<color rgb='ffffff'>REUNIONES</color>", :valign => :center, :at=>[20,1145],:inline_format => true

		y=cursor-40
		font_size 11

		bounding_box([10,y], :width =>200) do
			gap=0
			bounding_box([0, 0], :width => 200) do
				font "Times-Roman", :style => :bold
				text "\nID REUNIÓN: "+meeting.id.to_s
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		y=cursor
		cell_1 = make_cell(:content => ''+meeting.asistentes.upcase, :align => :justify, :width=>520,  :text_color => "747474", :border_width=>0, :overflow => :truncate, :padding => [0,5,5,0])
		bounding_box([10,y], :width =>520) do
			bounding_box([0, 0], :width => 520) do
				font "Times-Roman", :style => :bold
				text "\nASISTENTES:"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		y=cursor
		cell_1 = make_cell(:content => ''+meeting.resumen, :align => :justify, :width=>520,  :text_color => "747474", :border_width=>0, :overflow => :truncate, :padding => [0,5,5,0])
		bounding_box([10,y], :width =>520) do
			bounding_box([0, 0], :width => 520) do
				font "Times-Roman", :style => :bold
				text "\nRESUMEN:"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		y=cursor
		cell_1 = make_cell(:content => ''+meeting.tema, :align => :justify, :width=>520,  :text_color => "747474", :border_width=>0, :overflow => :truncate, :padding => [0,5,5,0])
		bounding_box([10,y], :width =>520) do
			bounding_box([0, 0], :width => 520) do
				font "Times-Roman", :style => :bold
				text "\nTEMA:"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		y=cursor
		cell_1 = make_cell(:content => ''+meeting.stakeholder.nombre+ "" + meeting.stakeholder.apellido,:align => :justify, :width=>120, :valign => :bottom , :text_color => "747474", :border_width=>0, :overflow => :truncate,:padding => [9, 0, 0, 0])
		bounding_box([10,y], :width =>90) do
			gap=0
			bounding_box([0, 0], :width => 90) do
				font "Times-Roman", :style => :bold
				text "\nSTAKEHOLDER:"
				transparent(0.5) {}
			end			
			bounding_box([90, bounds.top - gap], :width => 120) do
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end
	end

	def displayImage(meeting)
		image Rails.root.to_s+"/public"+ @current_user.empresa.imagen_url, :height => 120, :width => 520 ,:position => :center, :vposition=> 0
	end


end