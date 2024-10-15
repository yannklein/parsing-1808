require 'json'
require 'open-uri'

# TODO - Let's fetch some API:

url = 'https://api.github.com/users/sadcrispy'

# Step 1 - get the json file
user_serialized = URI.open(url).read
# p user_serialized

# Step 2 - parse it with json library 
user = JSON.parse(user_serialized)
p user["name"]
