class MusicalGroupsController < InheritedResources::Base

	def new
	    @musical_group = MusicalGroup.find(params[:id])
	end
end
