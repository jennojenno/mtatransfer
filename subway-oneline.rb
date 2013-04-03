subwaymap = {

	"n" => ["8th st", "Union Sq", "28th St-n", "34th St", "Times Sq"],
	"l" => ["1st ave", "3rd ave", "Union Sq", "6th ave", "8th ave"],
	"six" => ["Astor Place", "Union Sq", "23rd st", "28th st-6", "33rd st", "Grand Central"]

}

# subwaymap["n"][0]   		gives first stop of N line

puts subwaymap["n"]
puts "Above are the stops on the N line. Which station will you be entering from?"
geton = gets.chomp
first = subwaymap["n"].index(geton)


puts "Enter in your exit station"
getoff = gets.chomp 
second = subwaymap["n"].index(getoff)

numstops = (first - second).abs
puts "From your entrance to exit, you have #{numstops} stops to go."