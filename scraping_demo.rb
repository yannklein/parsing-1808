require 'open-uri'
require "nokogiri"

# Let's scrape recipes from bbcgoodfood
ingredient = "chocolate"
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"
# puts url

# Step 1 - get the html file
html_file = URI.open(url).read

# Step 2 - parse it with Nokogiri (find each title/link of each article)
# class: standard-card-new__article-title
html_doc = Nokogiri::HTML(html_file)
# p html_doc

# .card means an element that has a 'card' class
html_doc.search(".card").each do |card|
  p card.search(".heading-4").text
  # class="link d-block" can be searched with .search(".link.d-block")
  p card.search(".link.d-block").attribute("href").value
end
