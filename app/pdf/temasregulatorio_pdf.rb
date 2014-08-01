class TemasregulatorioPdf < Prawn::Document
	def initialize(temasregulatorio,current_user)
	   	super()
	   	@current_user=current_user
	   	imprimir(temasregulatorio)
	end

	def imprimir(temasregulatorio)
		displayImage(temasregulatorio)
		
		font "Times-Roman", :style => :bold
		fill_color '747474'
		fill_rectangle [10, 590], 520, 30
		font_size 13
		text_box "<color rgb='ffffff'>TEMAS REGULATORIOS</color>", :valign => :center, :at=>[20,1145],:inline_format => true

		y=cursor-40
		font_size 11

		bounding_box([10,y], :width =>200) do
			gap=0
			bounding_box([0, 0], :width => 200) do
				font "Times-Roman", :style => :bold
				text "\nID TEMA REGULATORIO: "+temasregulatorio.id.to_s
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		y=cursor
		cell_1 = make_cell(:content => ''+temasregulatorio.stakeholder.nombre+ "" + temasregulatorio.stakeholder.apellido,:align => :justify, :width=>120, :valign => :bottom , :text_color => "747474", :border_width=>0, :overflow => :truncate,:padding => [9, 0, 0, 0])
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

		y=cursor
		cell_1 = make_cell(:content => ''+temasregulatorio.resumen, :align => :justify, :width=>520,  :text_color => "747474", :border_width=>0, :overflow => :truncate, :padding => [0,5,5,0])
		bounding_box([10,y], :width =>520) do
			bounding_box([0, 0], :width => 520) do
				font "Times-Roman", :style => :bold
				text "\nRESUMEN"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		y=cursor
		cell_1 = make_cell(:content => ''+temasregulatorio.titulo, :align => :justify, :width=>520,  :text_color => "747474", :border_width=>0, :overflow => :truncate, :padding => [0,5,5,0])
		bounding_box([10,y], :width =>520) do
			bounding_box([0, 0], :width => 520) do
				font "Times-Roman", :style => :bold
				text "\nTEMA"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		y=cursor
		bounding_box([10,y], :width =>520) do
			gap=0
			cell_1 = make_cell(:content => ''+temasregulatorio.imagen_url.to_s, :align => :justify, :width=>280, :height=>20, :text_color => "747474", :border_width=>0, :overflow => :truncate, :padding => [0,5,5,0])
			bounding_box([0,gap], :width =>280) do
				bounding_box([0, 0], :width => 280) do
					font "Times-Roman", :style => :bold
					text "\nARCHIVO"
					font "Times-Roman", :style => :normal
					table([[cell_1]])
					transparent(0.5) {}
				end	
				transparent(0.5) {}
			end

			cell_1 = make_cell(:content => ''+temasregulatorio.created_at.to_s, :align => :justify, :width=>170,  :text_color => "747474", :border_width=>0, :overflow => :truncate, :padding => [0,5,5,0])
			bounding_box([350,bounds.top - gap], :width =>170) do
				bounding_box([0, 0], :width => 170) do
					font "Times-Roman", :style => :bold
					text "\nFECHA DE CERACIÓN"
					font "Times-Roman", :style => :normal
					table([[cell_1]])
					transparent(0.5) {}
				end			
				transparent(0.5) {}
			end

			transparent(0.5) {}
		end

	end

	def displayImage(temasregulatorio)
		image Rails.root.to_s+"/public"+ @current_user.empresa.imagen_url, :height => 120, :width => 520 ,:position => :center, :vposition=> 0
	end


end