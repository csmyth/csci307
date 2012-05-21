class Project < ActiveRecord::Base
	has_many :assignments
	belongs_to :client
	has_many :contacts
	has_many :red_flags
end
