require 'json'

# READ (= PARSE) A JSON
# filepath = "data/beers.json"
# raw_json = File.read(filepath)
# data = JSON.parse(raw_json)
# p data # is a hash with String keys
# p data.class

# WRITE A JSON

beatles = { 
  beatles: [
    {
      first_name: "John",
      last_name: "Lennon",
      instrument: "Guitar"
    },
    {
      first_name: "Paul",
      last_name: "McCartney",
      instrument: "Bass Guitar"
    }
  ]
}

filepath = 'data/beatles.json'
File.open(filepath, 'wb') do |json_file|
  json_file.write(JSON.generate(beatles))
end