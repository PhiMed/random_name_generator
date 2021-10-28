# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

first_name_data = CSV.read(Rails.root.join('lib', 'seeds', 'first_names.csv'), headers: false, quote_char: 0)
ffn = first_name_data.flatten!
last_name_data = CSV.read(Rails.root.join('lib', 'seeds', 'last_names.csv'), headers: false, quote_char: 0)
fln = last_name_data.flatten!
1000.times do
  Name.create(name: ("#{ffn.shuffle.pop.upcase.to_s.gsub('"', '')} #{fln.shuffle.pop.upcase.to_s.gsub('"', '')}"))
end
