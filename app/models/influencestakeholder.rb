class Influencestakeholder < ActiveRecord::Base
	belongs_to :stakeholder
	belongs_to :influence
end
