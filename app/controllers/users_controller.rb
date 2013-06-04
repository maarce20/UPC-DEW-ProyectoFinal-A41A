class UsersController < InheritedResources::Base
	def create
		create! { users_path }
		
	end
end
