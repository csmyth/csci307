task :fill_privileges => :environment do
  # For each role find or create a privilege per table
	Role.all.each do | role |
		ActiveRecord::Base.connection.tables.each do | table |
			# Create corresponding privilege
			puts "Created privilege for " + role.name + " " + table.to_s
			Privilege.find_or_create_by_role_id_and_table_name( role.id, table.to_s  )	
		end
	end
end
