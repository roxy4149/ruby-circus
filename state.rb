class State
	@@states = {"GA" => "Georgia", "CA" => "California"}
	@@abbreviations = {"Georgia" => "GA", "California" => "CA"}
	@@state_alpha = ["Georgia", "California", "Alabama", "Flordia"]
	@@ab_alpha = ["GA", "CA", "AL", "FL"]
	def name (ab_input)
		return @@states[ab_input]
	end

	def abbreviation (state_input)
		return @@abbreviations[state_input]
	end

	def all 
		return @@state_alpha.sort
	end

	def all_abbreviations
		return @@ab_alpha.sort
	end
end