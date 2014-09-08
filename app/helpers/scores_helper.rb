module ScoresHelper

	def distance_calc(local_now, plate)
		

		side_A = plate - local_now 
		side_B = plate + local_now

		cee = (side_A ** 2) + (side_B ** 2) 

		fracshun = (cee / 360) * 24901.31643

		@new_points = fracshun 
		
		@score.update(points: @new_points)
	end
		
end

=begin
def distance_calc(local_now, plate)
		local_now = Distance.find_by(:state_abbrev params[:score][:current_location])
		plate = Distance.find_by(:state_abbrev params[:score][:plate_spotted])

		plate.latitude - local_now.latitude = side_A
		plate.longitude - local_now.longitude = side_B

		cee = (side_A ** 2) + (side_B ** 2) 

		fracshun = cee / 360
		
		@new_points = fracshun * 24901.31643

		@score.update(points: @new_points)
	end
=end