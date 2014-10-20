module ScoresHelper

	def distance_calc#(local_now, plate)

		local_now = Distance.find_by(state_abbrev: params[:score][:current_location])

		plate = Distance.find_by(state_abbrev: params[:score][:plate_spotted])

		side_A = plate.latitude - local_now.latitude 
		side_B = plate.longitude - local_now.longitude

		cee = (side_A ** 2) + (side_B ** 2) 

		cee = Math.sqrt(cee) 

		fracshun = cee / 360
		
		@new_points = fracshun * 24901.31643

		@score.update(points: @new_points.to_i)
	end	

	def update_cur_loc
		@user.update(last_cur_loc: params[:score][:current_location])
	end
	
end

