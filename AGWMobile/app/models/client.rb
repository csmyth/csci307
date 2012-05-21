class Client < ActiveRecord::Base
	has_many :projects
	has_many :contacts
	has_many :red_flags
end
