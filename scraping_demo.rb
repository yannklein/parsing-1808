require 'open-uri'
require 'nokogiri'

# Let's scrape recipes from http://www.epicurious.com

url = "http://www.epicurious.com"

html_serialized = URI.open(url).read

html_doc = Nokogiri::HTML(html_serialized)

# p html_doc.search(".article-featured-item").size
# p html_doc.search(".article-featured-item")[0].class

articles = html_doc.search(".article-featured-item")

articles.each do |article|
  title =  article.search(".view-complete-item").text.gsub("View “", "").gsub("”", "")
  link = article.search(".view-complete-item").attribute("href").value
  puts "#{title}: #{url}#{link}"
end