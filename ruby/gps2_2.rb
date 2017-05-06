# Pseudocode for Grocery List

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # 1. split string input into an array of strings
  # 2. create a hash to store items
  # 3. iterate over each string in array
  # 4. set items as key values for hash
  # 5. set default quantity (1)
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add item name as key, quantity as value, and list as the hash
# output: new hash with new item+quantity

# Method to remove an item from the list
# input: list, item name
# steps: remove item as key from the appropriate hash (list)
# output: new hash with specified item removed

# Method to update the quantity of an item
# input: list, item name, and new quantity(value)
# steps: using the key (item name), set it equal to new quantity in list
# output: new hash with updated value for specified item

# Method to print a list and make it look pretty
# input: list
# steps: iterate through each key-value pair
# output: for each key-value pair, printing item + quantity on separate lines

DEFAULT_QUANTITY = 1

def grocery_list(grocery_items)
	grocery_items = grocery_items.split(" ")
	groceries = {}
	grocery_items.each do |item|
		groceries[item] = DEFAULT_QUANTITY
	end
	p groceries
end

def add_item(grocery_list, item, quantity = DEFAULT_QUANTITY)
	grocery_list[item] = quantity
	grocery_list
end

def remove_item(grocery_list, item)
	grocery_list.delete(item)
	grocery_list
end

def new_quantity(grocery_list, item, quantity)
	grocery_list[item] = quantity
	grocery_list
end

def list_printout(grocery_list)
	grocery_list.each do |item, quantity|
		puts "#{item}: #{quantity}"
	end
end


# Driver Code
list = grocery_list("carrots apples cereal pizza")
p add_item(list, "ice cream", 4)
p add_item(list, "lemonade", 2)
p remove_item(list, "lemonade")
p new_quantity(list, "ice cream", 1)
list_printout(list)


# Reflection Post-Challenge####################################################

# What I learned about pseudocode is how much easier writing the code truly is
# when you break down each individual step of what you're trying to accomplish.
# There is no trying to remember what something should take-in or what
# the next step should be, as it is all spelled out from the get-go.

# The tradeoffs for using the hash over the array is all the values
# need to be specified from the user input as to where the data should go.
# Working with arrays doesn't pose that problem, although once the data is 
# specified by using the hash, the rest of the work is much simpler.

# A method returns whatever is on the last line inside of the method, thus
# one should be attentative of what the actual output of a method is and
# if it is the output that is desired.

# You can pass strings, integers, arrays, hashes, and even other methods into 
# the argument of a method.

# Information can be passed between methods by setting the output of a method
# equal to a variable, and passing that variable into the argument of a 
# different method (like seen above in lines 68 and 69.)

# The concepts that were solidified are creating methods that take in different
# inputs and outputs, setting a method output to equal a variable and passing
# that variable into a different method, and iterating through arrays and 
# hashes. What is still confusing is knowing what the output will specifically
# be, for instance knowing if line 52 is superfluous because the output is
# the same as line 51. I'll check it out now...























