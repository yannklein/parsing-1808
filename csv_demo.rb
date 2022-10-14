require 'csv'

# TODO - let's read/write data from beers.csv
beer_filepath    = 'data/beers.csv'

# READ CSV (= PARSE) WITHOUT HEADER
csv_options = {quote_char: "'", col_sep: ";"}
CSV.foreach(beer_filepath, csv_options) do |row|
  p row[0] # an array
end

# READ CSV (= PARSE) WITH HEADER
# csv_options = {quote_char: "'", col_sep: ";", headers: :first_row}
# CSV.foreach(beer_filepath, csv_options) do |row|
#   # p row.to_h # behave like a hash
#   puts "#{row["Name"]}, #{row["Appearance"]} from #{row["Origin"]}"
# end

# WRITE CSV
beatles_filepath = 'data/beatles.csv'

csv_options = {quote_char: "'", force_quotes: true, col_sep: ";"}
CSV.open(beatles_filepath, 'wb', csv_options) do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
  csv << ["John", "Lennon", "Guitar"]
  csv << ["Paul", "McCartney", "Bass Guitar"]
  csv << ["Leigh", "Starr", "Drum"]
end