class State
	@@states = {"GA" => "Georgia", "CA" => "California"}
	@@abbreviations = {"Georgia" => "GA", "California" => "CA"}
	def name (ab_input)
		return @@states[ab_input]
	end

	def abbreviation (state_input)
		return @@abbreviations[state_input]
	end
end