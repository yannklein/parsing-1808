require 'csv'

# READ CSV (= PARSE) WITHOUT HEADER
# filepath = "data/beers.csv"

# CSV.foreach(filepath) do |row|
#   puts "#{row[0]} comes from #{row[2]}"
# end

# READ CSV (= PARSE) WITH HEADER
# filepath = "data/beers.csv"

# CSV.foreach(filepath, headers: :first_row, col_sep: ";") do |row|
#   # p row
#   puts "#{row["Name"]} is from #{row["Origin"]}"
# end

# WRITE CSV

beatles = [
  ["Jarod", "Lennon", "Guitar"],
  ["Phyu Phyu", "McCartney", "Bass Guitar"],
  ["Roman", "Starr", "Drum"],
]

file_path = "data/beatles.csv"
CSV.open(file_path, "wb") do |csv|
  csv << ["first_name", "last_name", "instrument"]
  beatles.each do |beatle|
    csv << beatle
  end
end
