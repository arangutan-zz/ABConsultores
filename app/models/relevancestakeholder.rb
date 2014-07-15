class Relevancestakeholder < ActiveRecord::Base
	belongs_to :stakeholder
	belongs_to :relevance
end
