class StakeholderPdf < Prawn::Document
	def initialize(stakeholder,current_user, margin)
	   	super(margin)
	   	@current_user=current_user
		imprimir(stakeholder)
	end

	def imprimir(stakeholder)
		displayImage(stakeholder)

		bounding_box([0, 580], :width => 550, :height => 70) do
			font "Times-Roman", :style => :bold
			font_size 18
			text ""+stakeholder.nombre.upcase+""+stakeholder.apellido.upcase, :valign => :center
			transparent(0.5) { stroke_bounds }
		end

		font_size 16
		text "\nIDENTIFICACIÓN STAKEHOLDER", :color => "4d4d4d"

		bounding_box([10, cursor-20], :width => 110, :height => 150) do
			image Rails.root.to_s+"/public"+ stakeholder.imagen_url, :width=>110, :height => 150, :position => :left
			transparent(0.5) { stroke_bounds }
		end
		font_size 11

		#First ROw
		bounding_box([200, cursor+150], :width => 160) do
			font "Times-Roman", :style => :bold
			text "\nNOMBRES: "
			font "Times-Roman", :style => :normal
			text stakeholder.nombre.upcase+"\n"
			transparent(0.5) {}
		end

		bounding_box([380, cursor+38], :width => 160) do
			font "Times-Roman", :style => :bold
			text "\nAPELLIDOS: "
			font "Times-Roman", :style => :normal
			text stakeholder.apellido.upcase+"\n"
			transparent(0.5) {}
		end

		#Second row

		bounding_box([200, cursor-10], :width => 160) do
			font "Times-Roman", :style => :bold
			text "\nENTIDAD, EMPRESA O CORPORACIÓN: "
			font "Times-Roman", :style => :normal
			text stakeholder.empresa.nombre_comercial.upcase+"\n"
			transparent(0.5) {}
		end

		bounding_box([380, cursor+38], :width => 160) do
			font "Times-Roman", :style => :bold
			text "\nTIPO DE ENTIDAD: "
			font "Times-Roman", :style => :normal
			text stakeholder.entity.nombre.upcase+"\n"
			transparent(0.5) {}
		end

		#Third row
		bounding_box([200, cursor-10], :width => 160) do
			font "Times-Roman", :style => :bold
			text "\nCARGO: "
			font "Times-Roman", :style => :normal
			text stakeholder.cargo.upcase+"\n"
			transparent(0.5) {}
		end

		bounding_box([380, cursor+38], :width => 160) do
			font "Times-Roman", :style => :bold
			text "\nMOVIMIENTO POLÍTICO: "
			font "Times-Roman", :style => :normal
			text stakeholder.movimiento_politico.upcase+"\n"
			transparent(0.5) {}
		end

		#Fourth row

		bounding_box([15, cursor-10], :width => 90) do
			font "Times-Roman", :style => :bold
			text "\nIMPACTO: ", :align => :center
			font "Times-Roman", :style => :normal
			text stakeholder.impacto.upcase+"\n", :align => :center

			transparent(0.5) {}
		end

		bounding_box([150, cursor+37], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nPAÍS: ", :align => :center
			font "Times-Roman", :style => :normal
			text stakeholder.pais.upcase+"\n", :align => :center
			transparent(0.5) {}
		end

		bounding_box([290, cursor+37], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nDEPARTAMENTO: ", :align => :center
			font "Times-Roman", :style => :normal
			text stakeholder.departamento.upcase+"\n", :align => :center

			transparent(0.5) {}
		end

		bounding_box([420, cursor+37], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nCIUDAD: ", :align => :center
			font "Times-Roman", :style => :normal
			text stakeholder.ciudad.upcase+"\n", :align => :center
			transparent(0.5) {}
		end
   		
		#End Fourth row

		font "Times-Roman", :style => :bold
		text "\nPERFIL: "
		font "Times-Roman", :style => :normal
		text stakeholder.perfil.upcase+"\n"

		font "Times-Roman", :style => :bold
		font_size 16
		text "\nIDENTIFICACIÓN STAKEHOLDER", :color => "4d4d4d"

		#Fifth row

		font_size 11
		bounding_box([15, cursor-10], :width => 90) do
			font "Times-Roman", :style => :bold
			text "\nDISPOSICIÓN: ", :align => :center
			font "Times-Roman", :style => :normal
			text stakeholder.disposicion.upcase+"\n", :align => :center

			transparent(0.5) {}
		end

		bounding_box([150, cursor+37], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nEXPECTATIVAS: ", :align => :center
			font "Times-Roman", :style => :normal
			text stakeholder.expectativas.upcase+"\n", :align => :center
			transparent(0.5) {}
		end

		bounding_box([290, cursor+37], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nDIMENSIÓN: ", :align => :center
			font "Times-Roman", :style => :normal
			text stakeholder.dimension.upcase+"\n", :align => :center

			transparent(0.5) {}
		end

		bounding_box([420, cursor+37], :width => 120) do
			font "Times-Roman", :style => :bold
			text "\nDEPENDENCIAS: ", :align => :center
			font "Times-Roman", :style => :normal
			text stakeholder.dependencia.upcase+"\n", :align => :center
			transparent(0.5) {}
		end


		#sixth row
		bounding_box([0, cursor-10], :width => 150) do
			font "Times-Roman", :style => :bold
			text "\nINFLUENCIA", :align => :center
			font "Times-Roman", :style => :normal
			stakeholder.influences.all.each do |relevances|
				text relevances.nombre.upcase+"\n", :align => :center
			end
			transparent(0.5) {}
		end

		bounding_box([185, cursor+38], :width => 150) do
			font "Times-Roman", :style => :bold
			text "\nRELEVANCIA", :align => :center
			font "Times-Roman", :style => :normal
			stakeholder.relevances.all.each do |relevances|
				text relevances.nombre.upcase+"\n", :align => :center
			end
			transparent(0.5) {}
		end
		gap=0
		bounding_box([380, cursor+38], :width => 190) do
			font "Times-Roman", :style => :bold
			text "\nPERFIL DE RELACIONAMIENTO"
			font "Times-Roman", :style => :normal
			bounding_box([gap, gap], :width => 100) do
				text "NECESIDADES DE LOGRO"
				transparent(0.5) {}
			end

			bounding_box([gap+110, gap+25], :width => 70) do
				text ""+stakeholder.necesidades_logro.upcase,:align => :right
				transparent(0.5) {}
			end

			bounding_box([gap, gap], :width => 100) do
				text "NECESIDADES DE PODER"
				transparent(0.5) {}
			end

			bounding_box([gap+110, gap+25], :width => 70) do
				text ""+stakeholder.necesidades_poder.upcase,:align => :right
				transparent(0.5) {}
			end

			bounding_box([gap, gap], :width => 100) do
				text "NECESIDADES DE AFILICACIÓN"
				transparent(0.5) {}
			end
			
			bounding_box([gap+110, gap+25], :width => 70) do
				text ""+stakeholder.necesidades_afiliacion.upcase,:align => :right
				transparent(0.5) {}
			end

			transparent(0.5) {}
		end



		# bounding_box([0, cursor], :width => 140) do
		# 	font "Times-Roman", :style => :bold
		# 	text "\nÚLTIMO ACCESO: ", :color => "4d4d4d"
		# 	font "Times-Roman", :style => :normal
		# 	text stakeholder.last_sign_in_at.to_s+"\n", :color => "4d4d4d" 	
		# 	transparent(0.5) {}
		# end

   		start_new_page(:top_margin => 0)
	end

	def displayImage(stakeholder)
		image Rails.root.to_s+"/public"+ @current_user.empresa.imagen_url, :height => 150, :position => :center, :vposition => :top
	end

end