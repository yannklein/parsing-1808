require 'json'
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username
# base_url = 'https://animechan.vercel.app/api'
# end_point =  '/random'

url = 'https://animechan.vercel.app/api/random'

url_serialized = URI.open(url).read
anime_quotes = JSON.parse(url_serialized)

puts "#{anime_quotes["anime"]} - #{anime_quotes["character"]} said #{anime_quotes["quote"][0..30]}..."