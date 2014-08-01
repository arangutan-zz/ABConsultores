class EmpresasPdf < Prawn::Document
	

	def initialize(empresas, current_user)
	   	super()
	   	@current_user=current_user

	   	imprimir(empresas.first)

	   	empresas.drop(1).each do |empresa|
	   		#if @current_user.empresa != empresa
	   			start_new_page(:top_margin => 40)
	   			imprimir(empresa)
	   		#end
	   	end
	end


	def imprimir(empresa)
		displayImage(empresa)

		font "Times-Roman", :style => :bold
		fill_color '747474'
		fill_rectangle [10, 590], 520, 30
		font_size 13
		text_box "<color rgb='ffffff'>"+empresa.nombre_comercial.upcase+"</color>", :valign => :center, :at=>[20,1145],:inline_format => true
		font_size 9.5
		y=cursor-50
		bounding_box([10, y], :width => 150, :height => 150) do
			if empresa.imagen_url
				image Rails.root.to_s+"/public"+ empresa.imagen_url, :width=>150, :height => 150, :position => :left
			end
			transparent(0.5) {}
		end

		cell_1 = make_cell(:content => ''+empresa.nombre_comercial.upcase, :background_color => 'eaeaea', :align => :justify, :width=>120,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
		bounding_box([170,y], :width =>120) do
			bounding_box([0, 0], :width => 120) do
				font "Times-Roman", :style => :bold
				text "\nNOMBRE COMERCIAL"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		cell_1 = make_cell(:content => ''+empresa.nit.upcase, :background_color => 'eaeaea', :align => :justify, :width=>115,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
		bounding_box([295,y], :width =>115) do
			bounding_box([0, 0], :width => 115) do
				font "Times-Roman", :style => :bold
				text "\nNIT"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		cell_1 = make_cell(:content => ''+empresa.razon_social.upcase, :background_color => 'eaeaea', :align => :justify, :width=>115,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
		bounding_box([415,y], :width =>115) do
			bounding_box([0, 0], :width => 115) do
				font "Times-Roman", :style => :bold
				text "\nRAZÓN SOCIAL"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		#SECOND ROW------------------------------------------------------------------------------------------------------

		y=cursor
		cell_1 = make_cell(:content => ''+empresa.representante_legal.upcase, :background_color => 'eaeaea', :align => :justify, :width=>120,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
		bounding_box([170,y], :width =>120) do
			bounding_box([0, 0], :width => 120) do
				font "Times-Roman", :style => :bold
				text "\nREPRESENTANTE LEGAL"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		cell_1 = make_cell(:content => ''+empresa.nombre_contacto.upcase, :background_color => 'eaeaea', :align => :justify, :width=>115,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
		bounding_box([295,y], :width =>115) do
			bounding_box([0, 0], :width => 115) do
				font "Times-Roman", :style => :bold
				text "\nNOMBRE DE CONTACTO"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		cell_1 = make_cell(:content => ''+empresa.email_contacto.upcase, :background_color => 'eaeaea', :align => :justify, :width=>115,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
		bounding_box([415,y], :width =>115) do
			bounding_box([0, 0], :width => 115) do
				font "Times-Roman", :style => :bold
				text "\nE-MAIL DE CONTACTO"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		#THIRD ROW------------------------------------------------------------------------------------------------------

		y=cursor
		cell_1 = make_cell(:content => ''+empresa.telefono_contacto.upcase, :background_color => 'eaeaea', :align => :justify, :width=>120,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
		bounding_box([170,y], :width =>120) do
			bounding_box([0, 0], :width => 120) do
				font "Times-Roman", :style => :bold
				text "\nTELÉFONO CONTACTO"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		cell_1 = make_cell(:content => ''+empresa.direccion_contacto.upcase, :background_color => 'eaeaea', :align => :justify, :width=>115,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
		bounding_box([295,y], :width =>115) do
			bounding_box([0, 0], :width => 115) do
				font "Times-Roman", :style => :bold
				text "\nDIRECCIÓN CONTACTO"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		cell_1 = make_cell(:content => ''+empresa.ciudad.upcase, :background_color => 'eaeaea', :align => :justify, :width=>115,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
		bounding_box([415,y], :width =>115) do
			bounding_box([0, 0], :width => 115) do
				font "Times-Roman", :style => :bold
				text "\nCIUDAD"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end


		#FOURTH ROW------------------------------------------------------------------------------------------------------

		y=cursor
		cell_1 = make_cell(:content => ''+empresa.pais.upcase, :background_color => 'eaeaea', :align => :justify, :width=>120,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
		bounding_box([170,y], :width =>120) do
			bounding_box([0, 0], :width => 120) do
				font "Times-Roman", :style => :bold
				text "\nPAÍS"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		cell_1 = make_cell(:content => ''+empresa.pagina_web.upcase, :background_color => 'eaeaea', :align => :justify, :width=>115,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
		bounding_box([295,y], :width =>115) do
			bounding_box([0, 0], :width => 115) do
				font "Times-Roman", :style => :bold
				text "\nPÁGINA WEB"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		#FIFTH ROW------------------------------------------------------------------------------------------------------

		y=cursor
		cell_1 = make_cell(:content => ''+empresa.created_at.to_s.upcase, :background_color => 'eaeaea', :align => :justify, :width=>120,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
		bounding_box([170,y], :width =>120) do
			bounding_box([0, 0], :width => 120) do
				font "Times-Roman", :style => :bold
				text "\nFECHA DE CREACIÓN"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end

		cell_1 = make_cell(:content => ''+empresa.fecha_vencimiento.to_s.upcase, :background_color => 'eaeaea', :align => :justify, :width=>115,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
		bounding_box([295,y], :width =>115) do
			bounding_box([0, 0], :width => 115) do
				font "Times-Roman", :style => :bold
				text "\nFECHA DE EXPIRACIÓN"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end
		
		if empresa.habilidato 
			habilitado ="Sí"
		else  
		 	habilitado = "No"
		end
		cell_1 = make_cell(:content => ''+habilitado, :background_color => 'eaeaea', :align => :justify, :width=>115,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
		bounding_box([415,y], :width =>115) do
			bounding_box([0, 0], :width => 115) do
				font "Times-Roman", :style => :bold
				text "\nHABILITADO"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end			
			transparent(0.5) {}
		end
	end

	def displayImage(empresa)
		image Rails.root.to_s+"/public"+ @current_user.empresa.imagen_url, :height => 120, :width => 520 ,:position => :center, :vposition=> 0
	end

end