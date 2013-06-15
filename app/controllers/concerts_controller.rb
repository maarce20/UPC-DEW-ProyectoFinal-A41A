class ConcertsController < InheritedResources::Base
	before_filter :require_login, :only => [:new, :create]

	def index
		index!{
			@search = Concert.search(params[:q])
			@total = Concert.count
			@concerts = @search.result
			@search.build_condition
		}
	end

end
