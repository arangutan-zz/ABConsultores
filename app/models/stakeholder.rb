class Stakeholder < ActiveRecord::Base
	mount_uploader :imagen, FileUploader
	has_many :compromises
	has_many :interest
	has_many :temasregulatorios
	has_one :entity
	belongs_to :empresa

	has_many :relevances, :through => :relevancestakeholders

	def nombre_completo
		"#{nombre}"+' '+"#{apellido}"
	end
end
