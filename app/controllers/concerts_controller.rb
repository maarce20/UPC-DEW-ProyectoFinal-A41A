class ConcertsController < InheritedResources::Base

	def index
		index!{
			@search = Concert.search(params[:q])
			@concerts = @search.result
			@search.build_condition
		}
	end
end
