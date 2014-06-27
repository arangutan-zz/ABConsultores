class Empresa < ActiveRecord::Base
	mount_uploader :imagen, FileUploader 
	has_many :users
	has_many :stakeholders
end
