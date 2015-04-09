# require 'pry'


require 'json'
require 'rest-client'
result = RestClient.get 'http://api.kivaws.org/v1/partners.json'
result_hash = JSON.load(result)

result_hash['partners'].each do |partner|
	puts 'Name: ' +  partner['name'] + " | Status: " + partner["status"] + " | Rating: " + partner['rating']

end


# score = 10
# score += 4

# binding.pry

# score -=2



dbl_result = {'partner'=>{
		
	}}

