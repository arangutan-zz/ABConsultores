class StakeholderPdf < Prawn::Document
	def initialize(stakeholder,current_user, margin)
	   	super(margin)
	   	@current_user=current_user
		imprimir(stakeholder)
	end

	def imprimir(stakeholder)
		displayImage(stakeholder)
		font "Times-Roman", :style => :bold

		fill_color '747474'
		fill_rectangle [10, 580], 520, 30
		font_size 13
		text_box "<color rgb='ffffff'>"+stakeholder.nombre.upcase+" "+stakeholder.apellido.upcase+"</color>", :valign => :center, :at=>[20,1125],:inline_format => true

		font_size 12
		text_box "\n<color rgb='747474'>IDENTIFICACIÓN STAKEHOLDER</color>",:inline_format => true, :at=>[10,550]

		stroke_color "747474"
		stroke do
			move_down 50
			horizontal_line 10, 530, :at => 520
		end
		y= cursor-80
		bounding_box([30, y], :width => 110, :height => 150) do
			image Rails.root.to_s+"/public"+ stakeholder.imagen_url, :width=>100, :height => 130, :position => :left
			transparent(0.5) { }
		end
		font_size 9.5

		#First Row
		y=cursor+160
		bounding_box([160, y], :width => 160) do
			font "Times-Roman", :style => :bold
			text "\nNOMBRES"
			fill_color 'eaeaea'
			fill_rectangle [0, 0], 180, 20
			fill_color '747474'
			font "Times-Roman", :style => :normal
			text_box "\n<color rgb='747474'>"+stakeholder.nombre.upcase+"</color>",:inline_format => true, :at=>[5,3]
			transparent(0.5) {}
		end

		bounding_box([350, y], :width => 160) do
			font "Times-Roman", :style => :bold
			text "\nAPELLIDOS"
			fill_color 'eaeaea'
			fill_rectangle [0, 0], 180, 20
			fill_color '747474'
			font "Times-Roman", :style => :normal
			text_box "\n<color rgb='747474'>"+stakeholder.apellido.upcase+"</color>",:inline_format => true, :at=>[5,3]
			transparent(0.5) {}
		end

		#Second row
		y=cursor-25
		bounding_box([160, y], :width => 180) do
			font "Times-Roman", :style => :bold
			text "\nENTIDAD, EMPRESA O CORPORACIÓN"
			fill_color 'eaeaea'
			fill_rectangle [0, 0], 180, 20
			fill_color '747474'
			font "Times-Roman", :style => :normal
			text_box "\n<color rgb='747474'>"+stakeholder.empresa.nombre_comercial.upcase+"</color>",:inline_format => true, :at=>[5,3]
			transparent(0.5) {}
		end

		bounding_box([350, y], :width => 180) do
			font "Times-Roman", :style => :bold
			text "\nTIPO DE ENTIDAD"
			fill_color 'eaeaea'
			fill_rectangle [0, 0], 180, 20
			fill_color '747474'
			font "Times-Roman", :style => :normal
			text_box "\n<color rgb='747474'>"+stakeholder.entity.nombre.upcase+"</color>",:inline_format => true, :at=>[5,3]
			transparent(0.5) {}
		end

		#Third row
		y=cursor-25
		bounding_box([160, y], :width => 180) do
			font "Times-Roman", :style => :bold
			text "\nCARGO"
			fill_color 'eaeaea'
			fill_rectangle [0, 0], 180, 20
			fill_color '747474'
			font "Times-Roman", :style => :normal
			text_box "\n<color rgb='747474'>"+stakeholder.cargo.upcase+"</color>",:inline_format => true, :at=>[5,3]
			transparent(0.5) {}
		end

		bounding_box([350, y], :width => 180) do
			font "Times-Roman", :style => :bold
			text "\nMOVIMIENTO POLÍTICO"
			fill_color 'eaeaea'
			fill_rectangle [0, 0], 180, 20
			fill_color '747474'
			font "Times-Roman", :style => :normal
			text_box "\n<color rgb='747474'>"+stakeholder.movimiento_politico.upcase+"</color>",:inline_format => true, :at=>[5,3]
			transparent(0.5) {}
		end

		#Fourth row
		y=cursor-25
		bounding_box([15, y], :width => 90) do
			font "Times-Roman", :style => :bold
			text "\nIMPACTO"
			fill_color 'eaeaea'
			fill_rectangle [0, 0], 130, 20
			fill_color '747474'
			font "Times-Roman", :style => :normal
			text_box "\n<color rgb='747474'>"+stakeholder.impacto.upcase+"</color>",:inline_format => true, :at=>[5,3]
			transparent(0.5) {}
		end

		bounding_box([160, y], :width => 90) do
			font "Times-Roman", :style => :bold
			text "\nPAÍS"
			fill_color 'eaeaea'
			fill_rectangle [0, 0], 110, 20
			fill_color '747474'
			font "Times-Roman", :style => :normal
			text_box "\n<color rgb='747474'>"+stakeholder.pais.upcase+"</color>",:inline_format => true, :at=>[5,3]
			transparent(0.5) {}
		end

		bounding_box([280, y], :width => 90) do
			font "Times-Roman", :style => :bold
			text "\nDEPARTAMENTO"
			fill_color 'eaeaea'
			fill_rectangle [0, 0], 110, 20
			fill_color '747474'
			font "Times-Roman", :style => :normal
			text_box "\n<color rgb='747474'>"+stakeholder.departamento.upcase+"</color>",:inline_format => true, :at=>[5,3]
			transparent(0.5) {}
		end

		bounding_box([400, y], :width => 90) do
			font "Times-Roman", :style => :bold
			text "\nCIUDAD"
			fill_color 'eaeaea'
			fill_rectangle [0, 0], 130, 20
			fill_color '747474'
			font "Times-Roman", :style => :normal
			text_box "\n<color rgb='747474'>"+stakeholder.ciudad.upcase+"</color>",:inline_format => true, :at=>[5,3]
			transparent(0.5) {}
		end

  		
		#End Fourth row
		y=cursor-25
		cell_1 = make_cell(:content => ''+stakeholder.perfil.upcase, :background_color => 'eaeaea', :align => :justify, :width=>515, :height=>270,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
		bounding_box([15,y], :width =>515) do
			bounding_box([0, 0], :width => 515) do
				font "Times-Roman", :style => :bold
				text "\nPERFIL"
				font "Times-Roman", :style => :normal
				table([[cell_1]])
				transparent(0.5) {}
			end
			y=cursor
			
			transparent(0.5) {}
		end
		
		#-------------------------------------------------------------------------------------------------------------#
  		start_new_page(:top_margin => 20)
  		y=cursor-20
   		font_size 12
   		font "Times-Roman", :style => :bold
		text_box "\n<color rgb='747474'>CLASIFICACIÓN STAKEHOLDER</color>",:inline_format => true, :at=>[10,y]

		stroke_color "747474"
		 stroke do
		 	move_down 50
		 	horizontal_line 10, 530, :at => y-30
		 end

		#Fifth row

		y=cursor
		font_size 9.5
		bounding_box([15, y], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nDISPOSICIÓN", :align => :center
			transparent(0.5) {}
		end

		bounding_box([145,y], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nEXPECTATIVAS", :align => :center
			transparent(0.5) {}
		end

				bounding_box([275, y], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nDIMENSIÓN", :align => :center
			transparent(0.5) {}
		end


		bounding_box([405, y], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nDEPENDENCIAS", :align => :center
			transparent(0.5) {}
		end

		y=cursor
		font_size 12
		bounding_box([15,y], :width => 120,:height=>50) do
			font "Times-Roman", :style => :normal
			if stakeholder.disposicion
    			cell :content => stakeholder.disposicion.upcase, :background_color => 'eaeaea', :align => :center,:height=>50, :width=>120,  :text_color => "747474", :border_width=>0, :padding => [-3,0,0,0], :valign=>:center
    		end
    		transparent(0.5) {}
  		end

		bounding_box([145,y], :width => 120,:height=>50) do
			font "Times-Roman", :style => :normal
			if stakeholder.expectativas
    			cell :content => stakeholder.expectativas.upcase, :background_color => 'eaeaea', :align => :center,:height=>50, :width=>120,  :text_color => "747474", :border_width=>0, :padding => [-3,0,0,0], :valign=>:center
    		end
    		transparent(0.5) {}
  		end

		bounding_box([275,y], :width => 120,:height=>50) do
			font "Times-Roman", :style => :normal
			if stakeholder.dimension
    			cell :content => stakeholder.dimension.upcase, :background_color => 'eaeaea', :align => :center,:height=>50, :width=>120,  :text_color => "747474", :border_width=>0, :padding => [-3,0,0,0], :valign=>:center
    		end
    		transparent(0.5) {}
  		end

		bounding_box([405,y], :width => 120,:height=>50) do
			font "Times-Roman", :style => :normal
			if stakeholder.dependencia
    			cell :content => stakeholder.dependencia.upcase, :background_color => 'eaeaea', :align => :center,:height=>50, :width=>120,  :text_color => "747474", :border_width=>0, :padding => [-3,0,0,0], :valign=>:center
    		end
    		transparent(0.5) {}
  		end

  		y=cursor
  		font "Times-Roman", :style => :bold
		font_size 12
		text_box "\n<color rgb='747474'>INFLUENCIA Y RELEVANCIA</color>",:inline_format => true, :at=>[10,y]

		stroke_color "747474"
		stroke do
			move_down 50
			horizontal_line 10, 530, :at => y-30
		end


		# #sixth row

		font_size 9.5
		y=cursor+20
		bounding_box([15, y], :width => 165) do
			font "Times-Roman", :style => :bold
			text "\nINFLUENCIA", :align => :center
			transparent(0.5) {}
		end

		bounding_box([190, y], :width => 165) do
			font "Times-Roman", :style => :bold
			text "\nRELEVANCIA", :align => :center
			transparent(0.5) {}
		end

		bounding_box([365, y], :width => 165) do
			font "Times-Roman", :style => :bold
			text "\nPERFIL DE RELACIONAMIENTO", :align => :center
			transparent(0.5) {}
		end

		y=cursor

		bounding_box([15, y], :width => 165) do
			font "Times-Roman", :style => :normal
			stakeholder.influences.all.each do |influences|
				bounding_box([0,cursor-5], :width => 165,:height=>25) do
					font_size 12
					font "Times-Roman", :style => :normal
    				cell :content => influences.nombre.upcase, :background_color => 'eaeaea', :align => :center,:height=>25, :width=>165,  :text_color => "747474", :border_width=>0, :padding => [-3,0,0,0], :valign=>:center
    				transparent(0.5) {}
  				end
			end
			transparent(0.5) {}
		end

		bounding_box([190, y], :width => 165) do
			font "Times-Roman", :style => :normal
			stakeholder.relevances.all.each do |relevances|
				bounding_box([0,cursor-5], :width => 165,:height=>25) do
					font_size 12
					font "Times-Roman", :style => :normal
    				cell :content => relevances.nombre.upcase, :background_color => 'eaeaea', :align => :center,:height=>25, :width=>165,  :text_color => "747474", :border_width=>0, :padding => [-3,0,0,0], :valign=>:center
    				transparent(0.5) {}
  				end
			end
			transparent(0.5) {}
		end

		
		bounding_box([365, y-5], :width => 190) do
			font "Times-Roman", :style => :normal
			y=cursor
			bounding_box([0,y], :width => 95,:height=>40) do
				font "Times-Roman", :style => :normal
				font_size 11
    			cell :content => "NECESIDADES DE LOGRO", :background_color => '747474', :align => :left,:height=>40, :width=>95,  :text_color => "ffffff", :border_width=>0, :valign=>:center
    			transparent(0.5) {}
  			end

  			bounding_box([96,y+40], :width => 70,:height=>40) do
				font "Times-Roman", :style => :normal
				font_size 18
				if stakeholder.necesidades_logro
    				cell :content => ""+stakeholder.necesidades_logro.upcase+"%", :background_color => 'eaeaea', :align => :center,:height=>40, :width=>70,  :text_color => "747474", :border_width=>0, :valign=>:center,:padding => [-3,0,0,0]
    			end
    			transparent(0.5) {}
  			end

			bounding_box([0,y], :width => 95,:height=>40) do
				font "Times-Roman", :style => :normal
				font_size 11
    			cell :content => "NECESIDADES DE PODER", :background_color => '747474', :align => :left,:height=>40, :width=>95,  :text_color => "ffffff", :border_width=>0, :valign=>:center
    			transparent(0.5) {}
  			end


  			bounding_box([96,y+40], :width => 70,:height=>40) do
				font "Times-Roman", :style => :normal
				font_size 18
				if stakeholder.necesidades_poder
    				cell :content => ""+stakeholder.necesidades_poder.upcase+"%", :background_color => 'eaeaea', :align => :center,:height=>40, :width=>70,  :text_color => "747474", :border_width=>0, :valign=>:center,:padding => [-3,0,0,0]
    			end
    			transparent(0.5) {}
  			end

  			bounding_box([0,y], :width => 95,:height=>40) do
				font "Times-Roman", :style => :normal
				font_size 11
    			cell :content => "NECESIDADES DE AFILICACIÓN", :background_color => '747474', :align => :left,:height=>40, :width=>95,  :text_color => "ffffff", :border_width=>0, :valign=>:center, :padding => [0,0,0,4]
    			transparent(0.5) {}
  			end


  			bounding_box([96,y+40], :width => 70,:height=>40) do
				font "Times-Roman", :style => :normal
				font_size 18
				if stakeholder.necesidades_afiliacion
    				cell :content => ""+stakeholder.necesidades_afiliacion.upcase+"%", :background_color => 'eaeaea', :align => :center,:height=>40, :width=>70,  :text_color => "747474", :border_width=>0, :valign=>:center,:padding => [-3,0,0,0]
    			end
    			transparent(0.5) {}
  			end
			transparent(0.5) {}
		 end


		# ----------------------------------------------- REUNIONES -----------------------------------------------------------------
		if stakeholder.mettings.empty? ==false
			start_new_page(:top_margin => 20)
			

			y=cursor-10
	  		font "Times-Roman", :style => :bold
			font_size 11
			text_box "\n<color rgb='747474'>SEGUIMIENTO STAKEHOLDER</color>",:inline_format => true, :at=>[10,y]
			
			fill_color '747474'
			fill_rectangle [10, y-30], 520, 20
			font_size 12
			text_box "<color rgb='ffffff'>REUNIONES</color>", :valign => :center, :at=>[20,cursor+635],:inline_format => true
		
			firstmeeting = stakeholder.mettings.first
			y=cursor-60
				font_size 9.5
				bounding_box([10,y], :width => 100) do
					font "Times-Roman", :style => :bold
					text "\nFECHA"
					fill_color 'eaeaea'
					fill_rectangle [0, 0], 180, 20
					fill_color '747474'
					font "Times-Roman", :style => :normal
					text_box "\n<color rgb='747474'>"+firstmeeting.fecha.to_s+"</color>",:inline_format => true, :at=>[5,3]
					transparent(0.5) {}
				end

				bounding_box([200,y], :width => 100) do
					font "Times-Roman", :style => :bold
					text "\nTEMA"
					fill_color 'eaeaea'
					fill_rectangle [0, 0], 330, 20
					fill_color '747474'
					font "Times-Roman", :style => :normal
					text_box "\n<color rgb='747474'>"+firstmeeting.tema.upcase+"</color>",:inline_format => true, :at=>[5,3]
					transparent(0.5) {}
				end

				y=cursor-20
				bounding_box([10,y], :width => 100, height:30) do
					font "Times-Roman", :style => :bold
					text "\nASISTENTES"
					font "Times-Roman", :style => :normal
					cell :content => ""+firstmeeting.asistentes, :background_color => 'eaeaea', :width=>520,  :text_color => "747474", :border_width=>0
					transparent(0.5) {}
				end

				y=cursor-20
				bounding_box([10,y], :width => 100, height:200) do
					font "Times-Roman", :style => :bold
					text "\nRESUMEN"
					font "Times-Roman", :style => :normal
					cell :content => ""+firstmeeting.resumen, :background_color => 'eaeaea', :width=>520, height:520, :text_color => "747474", :border_width=>0
					transparent(0.5) {}
				end

			stakeholder.mettings.drop(1).each do |meeting|
				start_new_page(:top_margin => 20)
				y=cursor
				fill_color '747474'
				fill_rectangle [10, y], 520, 20
				font_size 12
				font "Times-Roman", :style => :bold
				text_box "<color rgb='ffffff'>REUNIONES</color>", :valign => :center, :at=>[20,cursor+715],:inline_format => true
				font_size 9.5
				y=cursor-20
				font_size 9.5
				bounding_box([10,y], :width => 100) do
					font "Times-Roman", :style => :bold
					text "\nFECHA"
					fill_color 'eaeaea'
					fill_rectangle [0, 0], 180, 20
					fill_color '747474'
					font "Times-Roman", :style => :normal
					text_box "\n<color rgb='747474'>"+meeting.fecha.to_s+"</color>",:inline_format => true, :at=>[5,3]
					transparent(0.5) {}
				end

				bounding_box([200,y], :width => 100) do
					font "Times-Roman", :style => :bold
					text "\nTEMA"
					fill_color 'eaeaea'
					fill_rectangle [0, 0], 330, 20
					fill_color '747474'
					font "Times-Roman", :style => :normal
					text_box "\n<color rgb='747474'>"+meeting.tema.upcase+"</color>",:inline_format => true, :at=>[5,3]
					transparent(0.5) {}
				end

				y=cursor-20
				bounding_box([10,y], :width => 100, height:30) do
					font "Times-Roman", :style => :bold
					text "\nASISTENTES"
					font "Times-Roman", :style => :normal
					cell :content => ""+meeting.asistentes.upcase+"%", :background_color => 'eaeaea', :width=>520,  :text_color => "747474", :border_width=>0
					transparent(0.5) {}
				end

				y=cursor-20
				bounding_box([10,y], :width => 100, height:200) do
					font "Times-Roman", :style => :bold
					text "\nRESUMEN"
					font "Times-Roman", :style => :normal
					cell :content => ""+meeting.resumen.upcase+"%", :background_color => 'eaeaea', :width=>520, height:520, :text_color => "747474", :border_width=>0
					transparent(0.5) {}
				end
			end
		end
		#----------------------------------------------------- COMPROMISOS---------------------------------------------------
		if stakeholder.compromises.empty? ==false
			start_new_page(:top_margin => 20)

			y=cursor-10
	  		font "Times-Roman", :style => :bold
			font_size 11
			text_box "\n<color rgb='747474'>SEGUIMIENTO STAKEHOLDER</color>",:inline_format => true, :at=>[10,y]
			
			fill_color '747474'
			fill_rectangle [10, y-30], 520, 20
			font_size 12
			text_box "<color rgb='ffffff'>COMPROMISOS</color>", :valign => :center, :at=>[20,cursor+635],:inline_format => true
			firstcompromise = stakeholder.compromises.first
				y=cursor-60
				font_size 9.5
				bounding_box([10,y], :width => 100) do
					font "Times-Roman", :style => :bold
					text "\nFECHA INCIAL"
					fill_color 'eaeaea'
					fill_rectangle [0, 0], 255, 20
					fill_color '747474'
					font "Times-Roman", :style => :normal
					text_box "\n<color rgb='747474'>"+firstcompromise.fecha_inicial.to_s+"</color>",:inline_format => true, :at=>[5,3]
					transparent(0.5) {}
				end

				bounding_box([275,y], :width => 100) do
					font "Times-Roman", :style => :bold
					text "\nFECHA LÍMITE"
					fill_color 'eaeaea'
					fill_rectangle [0, 0], 255, 20
					fill_color '747474'
					font "Times-Roman", :style => :normal
					text_box "\n<color rgb='747474'>"+firstcompromise.fecha_limite.to_s+"</color>",:inline_format => true, :at=>[5,3]
					transparent(0.5) {}
				end

				y=cursor-20
				bounding_box([10,y], :width => 100, height:30) do
					font "Times-Roman", :style => :bold
					text "\nCORREO"
					font "Times-Roman", :style => :normal
					cell :content => ""+firstcompromise.correo, :background_color => 'eaeaea', :width=>520,  :text_color => "747474", :border_width=>0
					transparent(0.5) {}
				end

				y=cursor-20
				bounding_box([10,y], :width => 100, height:200) do
					font "Times-Roman", :style => :bold
					text "\nRESUMEN"
					font "Times-Roman", :style => :normal
					cell :content => ""+firstcompromise.compromisos, :background_color => 'eaeaea', :width=>520, height:520, :text_color => "747474", :border_width=>0
					transparent(0.5) {}
				end

			stakeholder.compromises.drop(1).each do |compromise|
				start_new_page(:top_margin => 20)
				y=cursor
				fill_color '747474'
				fill_rectangle [10, y], 520, 20
				font_size 12
				font "Times-Roman", :style => :bold
				text_box "<color rgb='ffffff'>COMPROMISOS</color>", :valign => :center, :at=>[20,cursor+715],:inline_format => true
				font_size 9.5
				y=cursor-20
				bounding_box([10,y], :width => 100) do
					font "Times-Roman", :style => :bold
					text "\nFECHA INCIAL"
					fill_color 'eaeaea'
					fill_rectangle [0, 0], 255, 20
					fill_color '747474'
					font "Times-Roman", :style => :normal
					text_box "\n<color rgb='747474'>"+compromise.fecha_inicial.to_s+"</color>",:inline_format => true, :at=>[5,3]
					transparent(0.5) {}
				end

				bounding_box([275,y], :width => 100) do
					font "Times-Roman", :style => :bold
					text "\nFECHA LÍMITE"
					fill_color 'eaeaea'
					fill_rectangle [0, 0], 255, 20
					fill_color '747474'
					font "Times-Roman", :style => :normal
					text_box "\n<color rgb='747474'>"+compromise.fecha_limite.to_s+"</color>",:inline_format => true, :at=>[5,3]
					transparent(0.5) {}
				end

				y=cursor-20
				bounding_box([10,y], :width => 100, height:30) do
					font "Times-Roman", :style => :bold
					text "\nCORREO"
					font "Times-Roman", :style => :normal
					cell :content => ""+compromise.correo, :background_color => 'eaeaea', :width=>520,  :text_color => "747474", :border_width=>0
					transparent(0.5) {}
				end

				y=cursor-20
				bounding_box([10,y], :width => 100, height:200) do
					font "Times-Roman", :style => :bold
					text "\nRESUMEN"
					font "Times-Roman", :style => :normal
					cell :content => ""+compromise.compromisos, :background_color => 'eaeaea', :width=>520, height:520, :text_color => "747474", :border_width=>0
					transparent(0.5) {}
				end
			end
		end
		#----------------------------------------------------- TEMAS DE INTERÉS ---------------------------------------------------
		if stakeholder.interest.empty? == false
			start_new_page(:top_margin => 20)

			y=cursor-10
	  		font "Times-Roman", :style => :bold
			font_size 11
			text_box "\n<color rgb='747474'>SEGUIMIENTO STAKEHOLDER</color>",:inline_format => true, :at=>[10,y]
			
			fill_color '747474'
			fill_rectangle [10, y-30], 520, 20
			font_size 12
			text_box "<color rgb='ffffff'>TEMAS DE INTERÉS</color>", :valign => :center, :at=>[20,cursor+635],:inline_format => true

			firstinterest = stakeholder.interest.first
				font_size 9.5
				
				y=cursor-60
				bounding_box([10,y], :width => 100, height:30) do
					font "Times-Roman", :style => :bold
					text "\nTEMA"
					font "Times-Roman", :style => :normal
					cell :content => ""+firstinterest.tema, :background_color => 'eaeaea', :width=>520,  :text_color => "747474", :border_width=>0
					transparent(0.5) {}
				end

				y=cursor-20
				bounding_box([10,y], :width => 100, height:200) do
					font "Times-Roman", :style => :bold
					text "\nINFORMACIÓN"
					font "Times-Roman", :style => :normal
					cell :content => ""+firstinterest.informacion, :background_color => 'eaeaea', :width=>520, height:520, :text_color => "747474", :border_width=>0
					transparent(0.5) {}
				end
			stakeholder.interest.drop(1).each do |interest|
				start_new_page(:top_margin => 20)
				y=cursor
				fill_color '747474'
				fill_rectangle [10, y], 520, 20
				font_size 12
				font "Times-Roman", :style => :bold
				text_box "<color rgb='ffffff'>TEMAS DE INTERÉS</color>", :valign => :center, :at=>[20,cursor+715],:inline_format => true
				y=cursor-20
				font_size 9.5			
				bounding_box([10,y], :width => 100, height:30) do
					font "Times-Roman", :style => :bold
					text "\nTEMA"
					font "Times-Roman", :style => :normal
					cell :content => ""+interest.tema, :background_color => 'eaeaea', :width=>520,  :text_color => "747474", :border_width=>0
					transparent(0.5) {}
				end

				y=cursor-20
				bounding_box([10,y], :width => 100, height:200) do
					font "Times-Roman", :style => :bold
					text "\nINFORMACIÓN"
					font "Times-Roman", :style => :normal
					cell :content => ""+interest.informacion, :background_color => 'eaeaea', :width=>520, height:520, :text_color => "747474", :border_width=>0
					transparent(0.5) {}
				end
			end
		end

		#----------------------------------------------------- TEMAS REGULATORIOS ---------------------------------------------------
		if stakeholder.temasregulatorios.empty? == false
			start_new_page(:top_margin => 20)

			y=cursor-10
	  		font "Times-Roman", :style => :bold
			font_size 11
			text_box "\n<color rgb='747474'>SEGUIMIENTO STAKEHOLDER</color>",:inline_format => true, :at=>[10,y]
			
			fill_color '747474'
			fill_rectangle [10, y-30], 520, 20
			font_size 12
			text_box "<color rgb='ffffff'>TEMAS REGULATORIOS</color>", :valign => :center, :at=>[20,cursor+635],:inline_format => true

			firstregulatorio = stakeholder.temasregulatorios.first
				font_size 9.5
				
				y=cursor-60
				bounding_box([10,y], :width => 100, height:30) do
					font "Times-Roman", :style => :bold
					text "\nTÍTULO"
					font "Times-Roman", :style => :normal
					cell :content => ""+firstregulatorio.titulo, :background_color => 'eaeaea', :width=>520,  :text_color => "747474", :border_width=>0
					transparent(0.5) {}
				end

				y=cursor-20
				bounding_box([10,y], :width => 100, height:200) do
					font "Times-Roman", :style => :bold
					text "\nRESUMEN"
					font "Times-Roman", :style => :normal
					cell :content => ""+firstregulatorio.resumen, :background_color => 'eaeaea', :width=>520, height:520, :text_color => "747474", :border_width=>0
					transparent(0.5) {}
				end

			stakeholder.temasregulatorios.drop(1).each do |tema|
				start_new_page(:top_margin => 20)
				y=cursor
				fill_color '747474'
				fill_rectangle [10, y], 520, 20
				font_size 12
				font "Times-Roman", :style => :bold
				text_box "<color rgb='ffffff'>TEMAS REGULATORIOS</color>", :valign => :center, :at=>[20,cursor+715],:inline_format => true
				y=cursor-20
				font_size 9.5	
				bounding_box([10,y], :width => 100, height:30) do
					font "Times-Roman", :style => :bold
					text "\nTÍTULO"
					font "Times-Roman", :style => :normal
					cell :content => ""+tema.titulo, :background_color => 'eaeaea', :width=>520,  :text_color => "747474", :border_width=>0
					transparent(0.5) {}
				end

				y=cursor-20
				bounding_box([10,y], :width => 100, height:200) do
					font "Times-Roman", :style => :bold
					text "\nRESUMEN"
					font "Times-Roman", :style => :normal
					cell :content => ""+tema.resumen, :background_color => 'eaeaea', :width=>520, height:520, :text_color => "747474", :border_width=>0
					transparent(0.5) {}
				end

			end
		end
		# bounding_box([0, cursor], :width => 140) do
		# 	font "Times-Roman", :style => :bold
		# 	text "\nÚLTIMO ACCESO: ", :color => "4d4d4d"
		# 	font "Times-Roman", :style => :normal
		# 	text stakeholder.last_sign_in_at.to_s+"\n", :color => "4d4d4d" 	
		# 	transparent(0.5) {}
		# end

	end

	def displayImage(stakeholder)
		image Rails.root.to_s+"/public"+ @current_user.empresa.imagen_url, :height => 120, :width => 520 ,:position => :center, :vposition=> 40

	end

end