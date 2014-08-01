class CompromisePdf < Prawn::Document
	def initialize(compromise,current_user)
	   	super()
	   	@current_user=current_user
	   	imprimir(compromise)
  	
	end

		def imprimir(compromise)
		displayImage(compromise)
		
		font "Times-Roman", :style => :bold
		fill_color '747474'
		fill_rectangle [10, 590], 520, 30
		font_size 13
		text_box "<color rgb='ffffff'>COMPROMISOS</color>", :valign => :center, :at=>[20,1145],:inline_format => true
		y=cursor-40
		font_size 11
		bounding_box([10,y], :width =>200) do
			gap=0
			bounding_box([0, 0], :width => 200) do
				font "Times-Roman", :style => :bold
				text "\nID COMPROMISO: "+compromise.id.to_s
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end 		

		y=cursor
		bounding_box([10,y], :width =>520) do
			cell_1 = make_cell(:content => ''+compromise.fecha_inicial.to_s, :align => :justify, :width=>90,  :text_color => "747474", :border_width=>0, :overflow => :truncate, :padding => [10,5,5,0])
			gap=0
			bounding_box([0, 0], :width => 90) do
				font "Times-Roman", :style => :bold
				text "\nFECHA:"
				transparent(0.5) {}
			end			
			bounding_box([45, bounds.top - gap], :width => 90) do
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			


			cell_1 = make_cell(:content => ''+compromise.fecha_limite.to_s, :align => :justify, :width=>90,  :text_color => "747474", :border_width=>0, :overflow => :truncate, :padding => [10,5,5,0])
			gap=0
			bounding_box([300, bounds.top - gap], :width => 90) do
				font "Times-Roman", :style => :bold
				text "\nFECHA LÍMITE:"
				transparent(0.5) {}
			end			
			bounding_box([390, bounds.top - gap], :width => 90) do
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			

			transparent(0.5) {}
		end

		y=cursor
		bounding_box([10,y], :width =>520) do
			gap=0
			cell_1 = make_cell(:content => ''+compromise.stakeholder.nombre+ "" + compromise.stakeholder.apellido, :align => :justify, :width=>280, :height=>20, :text_color => "747474", :border_width=>0, :overflow => :truncate, :padding => [0,5,5,0])
			bounding_box([0,gap], :width =>280) do
				bounding_box([0, 0], :width => 280) do
					font "Times-Roman", :style => :bold
					text "\nSTAKEHOLDER:"
					font "Times-Roman", :style => :normal
					table([[cell_1]])
					transparent(0.5) {}
				end	
				transparent(0.5) {}
			end

			cell_1 = make_cell(:content => ''+compromise.correo, :align => :justify, :width=>170,  :text_color => "747474", :border_width=>0, :overflow => :truncate, :padding => [0,5,5,0])
			bounding_box([300,bounds.top - gap], :width =>170) do
				bounding_box([0, 0], :width => 170) do
					font "Times-Roman", :style => :bold
					text "\nCORREO:"
					font "Times-Roman", :style => :normal
					table([[cell_1]])
					transparent(0.5) {}
				end			
				transparent(0.5) {}
			end

			transparent(0.5) {}
		end

		y=cursor
		cell_1 = make_cell(:content => ''+compromise.compromisos, :align => :justify, :width=>520,  :text_color => "747474", :border_width=>0, :overflow => :truncate, :padding => [0,5,5,0])
		bounding_box([10,y], :width =>520) do
			bounding_box([0, 0], :width => 520) do
				font "Times-Roman", :style => :bold
				text "\nCOMPROMISOS:"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

	end

	def displayImage(compromise)
		image Rails.root.to_s+"/public"+ @current_user.empresa.imagen_url, :height => 120, :width => 520 ,:position => :center, :vposition=> 0
	end

end