# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
%w[Breakfast Lunch Dinner Drinks].each do |name|
  section = Section.create(:name => name)
  5.times do
    section.food_items.create(name: Faker::Food.unique.ingredient,
                              description: Faker::Lorem.paragraph,
                              price: Faker::Number.decimal(2,2),
                              image_url: Faker::Avatar::image)
  end

end
