# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

status_pairs = [
                ['Critical', 'red'],
                ['Amber', 'amber'],
                ['Good', 'green']
               ]

status_pairs.each do |name, color|
  Status.create(name: name, color: color)
end
