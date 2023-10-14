require 'open-uri'
require 'json'

# TODO - Let's fetch some API from:
# https://github.com/public-apis/public-apis
# url = 'https://api.github.com/users/yannklein'
url = "https://emojihub.yurace.pro/api/random"

# Step 1 - get the html file
raw_json = URI.open(url).read

# Step 2 - parse it with json library (find anime character and quote)
data = JSON.parse(raw_json)
p data["name"]