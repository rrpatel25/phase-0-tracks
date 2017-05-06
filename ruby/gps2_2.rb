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



def grocery_list(grocery_items)
	grocery_items = grocery_items.split(" ")
	groceries = {}
	grocery_items.each do |item|
		groceries[item] = 1
	end
	p groceries
end

def add_item(grocery_list, item, quantity = 1)
	grocery_list[item] = quantity
	grocery_listg
end

# Driver Code
list = grocery_list("carrots apples cereal pizza")
p add_item(list, "lemonade", 2)