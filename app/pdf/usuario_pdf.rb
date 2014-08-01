class UsuarioPdf < Prawn::Document
	def initialize(usuario,current_user)
	   	super()
	   	@current_user=current_user
   		if usuario.rol != "superadmin"
   			imprimir(usuario)
   		end
	end

	def imprimir(usuario)
		displayImage(usuario)
		font "Times-Roman", :style => :bold
		fill_color '747474'
		fill_rectangle [10, 590], 520, 30
		font_size 13
		text_box "<color rgb='ffffff'>"+usuario.nombre.upcase+" "+usuario.apellido.upcase+"</color>", :valign => :center, :at=>[20,1145],:inline_format => true

		y=cursor-40
		font_size 9.5
		bounding_box([10,y], :width =>520) do
			gap=0
			cell_1 = make_cell(:content => ''+usuario.id.to_s, :background_color => 'eaeaea', :align => :justify, :width=>170, :height=>20, :text_color => "747474", :border_width=>0, :overflow => :truncate)
			bounding_box([0,gap], :width =>170) do
				bounding_box([0, 0], :width => 170) do
					font "Times-Roman", :style => :bold
					text "\nID USUARIO"
					font "Times-Roman", :style => :normal
					table([[cell_1]])
					transparent(0.5) {}
				end	
				transparent(0.5) {}
			end

			cell_1 = make_cell(:content => ''+usuario.username.upcase, :background_color => 'eaeaea', :align => :justify, :width=>170,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
			bounding_box([175,bounds.top - gap], :width =>170) do
				bounding_box([0, 0], :width => 170) do
					font "Times-Roman", :style => :bold
					text "\nUSERNAME"
					font "Times-Roman", :style => :normal
					table([[cell_1]])
					transparent(0.5) {}
				end			
				transparent(0.5) {}
			end

			cell_1 = make_cell(:content => ''+usuario.nombre.upcase, :background_color => 'eaeaea', :align => :justify, :width=>170,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
			bounding_box([350,bounds.top - gap], :width =>170) do
				bounding_box([0, 0], :width => 170) do
					font "Times-Roman", :style => :bold
					text "\nNOMBRE"
					font "Times-Roman", :style => :normal
					table([[cell_1]])
					transparent(0.5) {}
				end			
				transparent(0.5) {}
			end
			transparent(0.5) {}
		end

		#Second row-------------------------------------------------------------------------------------------------
		
		y= cursor-10

		bounding_box([10,y], :width =>520) do
			gap=0
			cell_1 = make_cell(:content => ''+usuario.apellido.upcase, :background_color => 'eaeaea', :align => :justify, :width=>170, :height=>20, :text_color => "747474", :border_width=>0, :overflow => :truncate)
			bounding_box([0,gap], :width =>170) do
				bounding_box([0, 0], :width => 170) do
					font "Times-Roman", :style => :bold
					text "\nAPELLIDO"
					font "Times-Roman", :style => :normal
					table([[cell_1]])
					transparent(0.5) {}
				end	
				transparent(0.5) {}
			end

			cell_1 = make_cell(:content => ''+usuario.email.upcase, :background_color => 'eaeaea', :align => :justify, :width=>170,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
			bounding_box([175,bounds.top - gap], :width =>170) do
				bounding_box([0, 0], :width => 170) do
					font "Times-Roman", :style => :bold
					text "\nCORREO"
					font "Times-Roman", :style => :normal
					table([[cell_1]])
					transparent(0.5) {}
				end			
				transparent(0.5) {}
			end

			cell_1 = make_cell(:content => ''+usuario.telefono.to_s, :background_color => 'eaeaea', :align => :justify, :width=>170,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
			bounding_box([350,bounds.top - gap], :width =>170) do
				bounding_box([0, 0], :width => 170) do
					font "Times-Roman", :style => :bold
					text "\nTELÉFONO"
					font "Times-Roman", :style => :normal
					table([[cell_1]])
					transparent(0.5) {}
				end			
				transparent(0.5) {}
			end
			transparent(0.5) {}
		end

		# #Third row-------------------------------------------------------------------------------------------------
		
		y= cursor-20

		bounding_box([10,y], :width =>520) do
			gap=0
			cell_1 = make_cell(:content => ''+usuario.cargo.upcase, :background_color => 'eaeaea', :align => :justify, :width=>170, :height=>20, :text_color => "747474", :border_width=>0, :overflow => :truncate)
			bounding_box([0,gap], :width =>170) do
				bounding_box([0, 0], :width => 170) do
					font "Times-Roman", :style => :bold
					text "\nCARGO"
					font "Times-Roman", :style => :normal
					table([[cell_1]])
					transparent(0.5) {}
				end	
				transparent(0.5) {}
			end

			cell_1 = make_cell(:content => ''+usuario.empresa.nombre_comercial.upcase, :background_color => 'eaeaea', :align => :justify, :width=>170,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
			bounding_box([175,bounds.top - gap], :width =>170) do
				bounding_box([0, 0], :width => 170) do
					font "Times-Roman", :style => :bold
					text "\nEMPRESA"
					font "Times-Roman", :style => :normal
					table([[cell_1]])
					transparent(0.5) {}
				end			
				transparent(0.5) {}
			end

			cell_1 = make_cell(:content => ''+usuario.rol.to_s.upcase, :background_color => 'eaeaea', :align => :justify, :width=>170,  :text_color => "747474", :border_width=>0, :overflow => :truncate)
			bounding_box([350,bounds.top - gap], :width =>170) do
				bounding_box([0, 0], :width => 170) do
					font "Times-Roman", :style => :bold
					text "\nROL"
					font "Times-Roman", :style => :normal
					table([[cell_1]])
					transparent(0.5) {}
				end			
				transparent(0.5) {}
			end
			transparent(0.5) {}
		end


		#Fourth row-------------------------------------------------------------------------------------------------
		
		y= cursor-10

		bounding_box([10,y], :width =>520) do
			gap=0
			cell_1 = make_cell(:content => ''+ usuario.last_sign_in_at.to_s, :background_color => 'eaeaea', :align => :justify, :width=>170, :height=>20, :text_color => "747474", :border_width=>0, :overflow => :truncate)
			bounding_box([0,gap], :width =>170) do
				bounding_box([0, 0], :width => 170) do
					font "Times-Roman", :style => :bold
					text "\nULTIMO ACCESO"
					font "Times-Roman", :style => :normal
					table([[cell_1]])
					transparent(0.5) {}
				end	
				transparent(0.5) {}
			end

			transparent(0.5) {}
		end

	end

	def displayImage(usuario)
		image Rails.root.to_s+"/public"+ @current_user.empresa.imagen_url, :height => 120, :width => 520 ,:position => :center, :vposition=> 0
	end

end