application = {
	name: "Buzz Lightyear",
	address: "1234 W Main St Chicago, IL zipcode",
	email: "buzz.lightyear@toys.com",
	phone: "111-111-1112",
	"fave_shade" => "royal",
	"wallpaper_preferences" => "Paisley",
	ombre: "Fierce",
} 

# Driver Code
application["name"] = "Buzz Lightyear III"
application["phone"] = "111-111-1111"
application["hired"] = "Yes"

# Updating some values
p application["name"]
p application["wallpaper_preferences"]
p application["fave_shade"]

# Adding new value for hiring
p application["hired"]

# Accessing variable in hash test
tester = application["fave_shade"]
p application["fave_shade"]
p tester

# Adding keys
p application[:name] + application[:address]

# Finding if variables read methods
p tester.empty?