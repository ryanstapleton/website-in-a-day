# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do |sandwich|
  Sandwich.create!(
    title: "One Sexy Sandwich",
    size: "large",
    description: "this is a very good sandwich!",
    main_image: "http://via.placeholder.com/350x200",
    price: "$3"


    )
end
puts "5 sandwiches created"