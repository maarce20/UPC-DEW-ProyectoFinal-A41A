class UsersController < InheritedResources::Base
	respond_to :html, :xml, :json
	def create
		create! { users_path }
		
	end
end
