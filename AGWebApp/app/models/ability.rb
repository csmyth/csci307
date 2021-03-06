class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
	
    # No matter what the admin role can do anything, including flying, bending space time, and making a pb&j
    if user.has_role? :admin
      can :manage, :all
    end

    
  # For each priviledge the user has
	#user.roles.privileges.each do | role | 
		# For each Table
		# Choose the table
			#if privilege.read_all
			#end
			#elsif privilege.read_all
			#end
		
			#if privilege.create
			#end

			#if privilege.update_all
			#end
			#elsif privilege.update_own
			#end

			#if privilege.delete_all
			#end
			#elsif privilege.delete_own
			#end
	#end	

    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end

public
def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
end
