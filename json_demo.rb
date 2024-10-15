require 'json'

# READ (= PARSE) A JSON
# file_path = 'data/beers.json'

# serialized_data = File.read(file_path)
# p serialized_data.class
# data = JSON.parse(serialized_data)
# p data["beers"][0]["name"]

# WRITE A JSON

beatles = { 
  beatles: [
    {
      first_name: "Jarod",
      last_name: "Lennon",
      instrument: "Guitar"
    },
    {
      first_name: "Phyu Phyu",
      last_name: "McCartney",
      instrument: "Bass Guitar"
    }
  ]
}

file_path = 'data/beatles.json'
File.open(file_path, 'wb') do |file|
  serialized_beatles = JSON.generate(beatles)
  file.write(serialized_beatles)
end