class DistancesController < ApplicationController
	
	def index
		@distances = Distance.all
	end

	def new
		@distance = Distance.new
	end

	def create
	end

	
end


