module UsersHelper
	def top_three

		all_hash = {} 
		find_id_hash = {}

			User.all.each do |list| 

			all_hash["#{list.name}"] = list.scores.sum(:points).to_i 
			find_id_hash["#{list.name}"] = list.id
			end 


		d = all_hash.sort_by {|x, y| y}.reverse
		
		top = "<table class='table'>
				<thead>
				<tr>
				<th>&nbsp;</th>
				<th>Player</th>
				
				<th>Score</th>
				</tr>
				</thead>
				<tbody class='score'>
				<tr>
					<td>1. </td>
					<td> #{d[0][0].to_s}</td>
					
					<td>#{d[0][1].to_s}</td>
				</tr>
				<tr>
					<td>2.</td>
					<td>#{d[1][0].to_s}</td>
					
					<td>#{d[1][1].to_s}</td>
				</tr>
				<tr>
					<td>3.</td>
					<td>#{d[2][0].to_s}</td>
					
					<td>#{d[2][1].to_s}</td>
				</tr>
				</tbody>
				</table>"


	end

	
end
