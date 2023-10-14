require 'csv'

# READ CSV (= PARSE) WITHOUT HEADER
# filepath = 'data/beers.csv'
# CSV.foreach(filepath) do |row|
#   p "#{row[0]} is from #{row[2]} (#{row[3]}% alc)"
# end

# READ CSV (= PARSE) WITH HEADER
# filepath = 'data/beers.csv'
# CSV.foreach(filepath, headers: :first_row) do |row|
#   # p row
#   p "#{row["Name"]} is from #{row["Origin"]} (#{row["Alcohol"]}% alc)"
# end


# WRITE CSV
# "First Name", "Last Name", "Instrument"
# "John", "Lennon", "Guitar"
# "Paul", "McCartney", "Bass Guitar"

beatles = [
  ["Andre", "Lennon", "Guitar"],
  ["Miho", "McCartney", "Bass Guitar"]
]
# wb means "write" "binaries" (binary = text + more complex chars)
CSV.open("data/beatles.csv", 'wb') do |csv|
  # csv represents the whole CSV file
  csv <<["First Name", "Last Name", "Instrument"]
  beatles.each do |beatle|
    csv << beatle
  end
end