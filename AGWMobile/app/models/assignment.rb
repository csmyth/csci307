class Assignment < ActiveRecord::Base
	belongs_to :observation
	belongs_to :user
	belongs_to :project
end
