class UserMusicalGroupsController < ApplicationController
	belongs_to :musical_group
	belongs_to :user
end
