require "pry"

require_relative "shelter"
require_relative "pet"
require_relative "client"

shelter = nil

s1 = Shelter.new("414 Brannan St.", {}, {})
c1 = Client.new("John", "m", 49)
c2 = Client.new("Guy", "m", 25)
c3 = Client.new("Sumeet", "m", 28)
c4 = Client.new("Connie", "f", 21)
p1 = Pet.new("Tomale", "cat", "m", 2, ["string"])
p2 = Pet.new("Torta", "cat", "f", 2, ["feather"])
p3 = Pet.new("Hector", "dog", "m", 8, ["bone"])
p4 = Pet.new("Billie", "bird", "m", 4, ["bell"])
p5 = Pet.new("Lucy", "dog", "f", 1, ["ball"])

s1.pet["Tomale"] = p1
s1.pet["Torta"] = p2
s1.pet["Hector"] = p3
s1.pet["Billie"] = p4
s1.pet["Lucy"] = p5
s1.client["John"] = c1
s1.client["Guy"] = c2
s1.client["Sumeet"] = c3
s1.client["Connie"] = c4

print "Would you like to (l)ist available pets, (a)dopt a pet, (g)ive up a pet for adoption or (q)uit?"
input = gets.chomp.downcase

while input != "q"

	if input == "l"

		s1.pet.each do |x,y|
		  if y.available? 
		    puts "#{y.name} is available"
		  else 
		    puts "#{y.name} is unavailable"
		  end
	  end

	elsif input == "a"
		puts "What is the name of the pet you'd like to adopt?"
		pet_name = gets.chomp

		puts "What's your name?"
		owner_name =gets.chomp

		if s1.pet[pet_name].available?
			s1.pet[pet_name].owner = owner_name
			s1.client[owner_name].pet = pet_name
			puts "Congratulations. Your new friend's name is #{s1.client[owner_name].pet}"

		else
			puts "Unfortunately, #{s1.client[owner_name].pet} isn't available for adoption. "
		end

	elsif input == "g"
		
		puts "What's the name of the pet you want to give up for adoption?"
		adopt_pet = gets.chomp
      if s1.pet[adopt_pet].available? == false
      	currentowner = s1.pet[pet_name].owner
      	s1.pet[pet_name].owner = nil
      	s1.client[currentowner].pet = nil
      	puts "Thank you for your adoption."
      end 	

	
	end

	print "Would you like to (l)ist available pets, (a)dopt a pet, (g)ive up a pet for adoption or (q)uit?"
  input = gets.chomp.downcase

end
 

 			
			



