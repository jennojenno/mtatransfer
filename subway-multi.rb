subwaymap = {  #this is in class Hash
	"n" => ["8th st", "Union Sq", "28th St-n", "34th St", "Times Sq"],
	"l" => ["1st ave", "3rd ave", "Union Sq", "6th ave", "8th ave"],
	"six" => ["Astor Place", "Union Sq", "23rd st", "28th st-6", "33rd st", "Grand Central"]
}

puts subwaymap["n"]
puts "Above are the N line stops."
puts
puts subwaymap["l"]
puts "Above are the L line stops."
puts
puts subwaymap["six"]
puts "Above are the 6 line stops."
puts
puts "Which subway stop do you want to get on at?"
geton = gets.chomp
puts "Which stop do you want to get off at?"
getoff = gets.chomp

case
when first = subwaymap["n"].index(geton) #searches for geton string in hash
	puts "You've chosen to get on the N line. Starting position #{first}"
	tounion = (first-1).abs
	puts "There are #{tounion} stops to Union Square"
	if subwaymap["n"].index(getoff)
		second = subwaymap["n"].index(getoff)
		puts "Both your stops are on the N"
		numstops = (first - second).abs
		puts "From your entrance to exit, you have #{numstops} stops to go."
	elsif subwaymap["l"].index(getoff)
		second = subwaymap["l"].index(getoff)
		fromunion = (second - 2).abs
		puts "You have #{fromunion + tounion} stops to go"
	elsif subwaymap["six"].index(getoff)
		second = subwaymap["six"].index(getoff)
		fromunion = (second - 1).abs
		puts "You have #{fromunion + tounion} stops to go"
	end

when first = subwaymap["l"].index(geton)
	puts "You've chosen to get on the L line. Starting position #{first}"
	tounion = (first-2).abs
	puts "There are #{tounion} stops to Union Square"
	if subwaymap["l"].index(getoff)
		second = subwaymap["l"].index(getoff)
		puts "Both your stops are on the L"
		numstops = (first - second).abs
		puts "From your entrance to exit, you have #{numstops} stops to go."
	elsif subwaymap["n"].index(getoff)
		second = subwaymap["n"].index(getoff)
		fromunion = (second - 1).abs
		puts "You have #{fromunion + tounion} stops to go"
	elsif subwaymap["six"].index(getoff)
		second = subwaymap["six"].index(getoff)
		fromunion = (second - 1).abs
		puts "You have #{fromunion + tounion} stops to go"
	end

when first = subwaymap["six"].index(geton) 
	puts "You've chosen to get on the 6 line. Starting position #{first}"
	tounion = (first-1).abs
	puts "There are #{tounion} stops to Union Square"
	if subwaymap["six"].index(getoff)
		second = subwaymap["six"].index(getoff)
		puts "Both your stops are on the 6"
		numstops = (first - second).abs
		puts "From your entrance to exit, you have #{numstops} stops to go."
	elsif subwaymap["l"].index(getoff)
		second = subwaymap["l"].index(getoff)
		fromunion = (second - 2).abs
		puts "You have #{fromunion + tounion} stops to go"
	elsif subwaymap["n"].index(getoff)
		second = subwaymap["n"].index(getoff)
		fromunion = (second - 1).abs
		puts "You have #{fromunion + tounion} stops to go"
	end

else
	puts "Input invalid. Enter station name exactly as above"
end

