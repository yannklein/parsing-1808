require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'

# READ (= PARSE) A JSON
serialized_beers = File.read(filepath)
# p serialized_beers
# p serialized_beers.class

beer_data = JSON.parse(serialized_beers)

# p beer_data
# p beer_data.class

beer_data["beers"].each do |beer|
  puts "#{beer["name"]} from #{beer["origin"]}"
end

# WRITE A JSON
beatles = { beatles: [
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
]}

filepath    = 'data/beatles.json'
File.open(filepath, 'wb') do |file|
  serialized_beatles = JSON.generate(beatles)
  file.write(serialized_beatles)
end