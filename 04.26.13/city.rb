require 'net/http'
require 'json'
states = ["AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT","VA", "WA", "WV", "WI", "WY"]
states.each do |state|
	json = Net::HTTP.get('api.sba.gov',"/geodata/city_links_for_state_of/#{state.downcase}.json")
	my_state = JSON.parse(json)
	Dir::mkdir(state)
	my_state.each do |city|
		city_name = city['name']	
		city_name.downcase!
		city_name.gsub!(' ' , '_')
		f = File.new("#{state.downcase}/#{city_name}.json" , "w")
		f.write city.to_json
		f.close	
	end
end








