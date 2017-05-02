# Array Drills

# array = [1,10,6,5,18]

# def sort(array)

#   counter = 0

#   while counter < array.length
   
#     array.each do |x|
#       if 
#       x[counter] < x[counter +1]
#       counter+=1
#       elsif
#       x[counter] == x[counter +1]
#       counter+=1
#       else 
#       x[counter], x[counter+1] = x[counter+1], x[counter]
#       counter+=1
#       end
#     end
#   end
#     array 
# end

# p sort(array)

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries", "binoculars"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

zombie_apocalypse_supplies.each do |item|
	p item, "*"
end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----

# def alphabetizer(arr)
# 	i = 0
# 	swapped = false
# 	while i < arr.length - 1
# #	arr.each do |supply|
# 		a = arr[i]
# 		b = arr[i+1]
# 		if a[0] <= b[0]
# 			i += 1
# 		else
# 			swapped = true
# 			a = arr[i+1]
# 			b = arr[i]
# 			i += 1
# 		end
# 		if swapped == true
# 			alphabetizer(arr)
# 		end
# 	end
# 	arr
# end


def alphabetizer(arr)
	i = 0
	while i < arr.length-1
		element = arr[i]
		compare = arr[i+1]
		if element[0] <= compare[0]
			j = 1
			while element[0] == compare[0] && element.length >= j && compare.length >= j
				if (element[j] < compare[j])
					break
				elsif (element[j] > compare[j])
					arr[i] = compare
					arr[i+1] = element
					break
				else
					j = j+1
				end
			end
			i=i+1
		else
			arr[i] = compare
			arr[i+1] = element
			i = 0
		end
		#alphabetizer(arr)
	end
	arr
end

p alphabetizer(zombie_apocalypse_supplies)

# def alphabetizer(arr)
# 	index = 0
# 	arr.each do |supply|
# 		arr.each do |supply2|
# 			a = supply
# 			b = supply2
# 			if supply[0] <= supply2[0]
# 				true
# 			else
# 				a = supply2
# 				b = supply
# 			end
# 		end
# 	end
# 	arr
# end

# p alphabetizer(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----


def item_searcher(string)
	zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]
	zombie_apocalypse_supplies.each do |item|
		if item == string
			output = true
		else
			output = false
		end
		if output == true
			puts "Yes!"
		else
			nil
		end
	end
end

p item_searcher("rations")


# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

# def item_remover(arr)
# 	while arr.length > 5
# 		arr[arr]

# end

# new_bag = []

# zombie_apocalypse_supplies.each do |supply|
# 	counter = 4
# 	i = 0

# 	while counter >= 0
# 		new_bag.push(zombie_apocalypse_supplies[i])
# 		i += 1
# 		counter -= 1
# 	end
# end

# p new_bag

new_bag = []
counter = 0
until counter == 5
	new_bag.push(zombie_apocalypse_supplies[counter])
	counter += 1
end

p new_bag


# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
# other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
#                             "solar battery", "flashlight"]
# # ----

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

new_list = zombie_apocalypse_supplies + other_survivor_supplies
new_list.uniq

p new_list.uniq

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each do |animal,date|
	p "*#{animal}-#{date}*"
end



# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

# def extincter(arr)
# 	special_list = []
# 	arr.each do |animal,date|
# 		if date < 2000 { |animal,date|
# 			special_list << animal date }
# 		end
# 	end
# 	special_list
# end

# p extincter(extinct_animals)

# def extinct(list)
# 	list.each do |animal,date|
# 		if [:date] > 2000
# 			[:animal] = nil
# 		end
# 	end
# 	list
# end

new_list = {}
extinct_animals.each do |animal,date|
	if date.to_i < 2000
		new_list[animal] = date
	end
end


p new_list



# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

extinct_animals.each do |animal,date|
	new_date = date - 3
	extinct_animals[animal] = new_date
end

p extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

extinct_animals.each do |animal,date|
	if animal == "Andean Cat"
		puts 'Extinct'
	elsif animal == "Dodo"
		puts 'Extinct'
	elsif animal == "Saiga Antelope"
		puts 'Extinct'
	else
		puts 'Still around!'
	end
end

p extinct_animals
		

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

extinct_animals.delete_if do |animal,date|
	animal == "Passenger Pigeon"
end

p extinct_animals
