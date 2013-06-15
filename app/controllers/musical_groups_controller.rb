class MusicalGroupsController < InheritedResources::Base
	before_filter :require_login, :only => [:new, :create]
end
