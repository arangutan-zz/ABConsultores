class Temasregulatorio < ActiveRecord::Base
	mount_uploader :imagen, FileUploader
	belongs_to :stakeholder
end
