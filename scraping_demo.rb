require 'open-uri'
require "nokogiri"

# Let's scrape recipes from bbcgoodfood
ingredient = "chocolate"
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"
puts url

# Step 1 - get the html file
html_file = URI.open(url).read
# p html_file

# Step 2 - parse it with Nokogiri (find each title/link of each article)
html_doc = Nokogiri::HTML(html_file)
# p html_doc

html_doc.search(".card__content").each do |recipe_card|
  # p recipe_card.class
  title = recipe_card.search(".heading-4").text
  link = recipe_card.search(".link.d-block").attribute("href").value
  puts "RECIPE: #{title} - LINK: #{link}"
end
