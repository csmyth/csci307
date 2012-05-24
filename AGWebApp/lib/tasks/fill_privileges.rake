task :fill_privileges do
    # For each role find or create a privilege per table
	Role.all.each do | role |
		ActiveRecord::Base.connection.tables.each do | table |
			# Create corresponding privilege
			#puts "Created privilege for " + role + " " + table
			if Privilege.find_or_create_by_role_and_table( role, table)
				#puts "Created privilege for " + role + " " + table
			end
		end
	end
end
