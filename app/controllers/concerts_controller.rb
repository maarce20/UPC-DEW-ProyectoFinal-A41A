class ConcertsController < InheritedResources::Base

	def index
		index!{
			@search = Concert.search(params[:q])
			@total = Concert.count
			@concerts = @search.result
			@search.build_condition
		}
	end

end
