class UsersController < InheritedResources::Base
	respond_to :html, :xml, :json

	def index
		index!{
			@total = User.count
		}
	end

	def create
		create! { users_path }
		
	end
end
