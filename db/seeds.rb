# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
Location.destroy_all
Monster.destroy_all

weapons = [["Candy Cane Staff", "Magic", 10], ["Carrot Sword", "Melee", 7], ["Sliced Tomato", "Defense", 4], ["String Cheese Bow", "Ranged", 4], ["Candy Cane Bow", "Ranged", 10], ["Fork", "Melee",1]]

head = [["Watermelon Helm", "Defense", 8], ["Cheese Hat", "Defense", 3], ["Candy Apple Helm", "Defense", 10], ["Candy Corn Cone", "Defense", 7]]

# leg = [["Mango Platelegs"], ["Licorice Leather Chaps"], ["Caramel Vest"]]

# torso = [["Mango Platebody"], ["Licorice leather Body"], ["Caramel Skirt"]]
# foot = [["Tomato Sneakers"], ["Strappy String Cheese Sandals"], ["Chocolate Bunny Slippers"]]


weapons.each do |name, item_type, stat|
  Item.create(item: name, item_type: item_type, stat: stat)
end

head.each do |name, item_type, stat|
  Item.create(item: name, item_type: item_type, stat: stat)
end


locations = [["Sink", "flooding from the faucet"], ["The Sink Sea", "whirpool"], ["Oven", "extreme temperatures"], ["Cutting board", "knives chopping the area"], ["Stovetop", "open flames"], ["Dishwasher", "turbulent soapy hurricane"]]

locations.each do |name, obstacle|
  Location.create(:name => name, :obstacle => obstacle)
end

monsters = [["Soapy", "Go back to start", 1 ,1], ["Dancing hot coal", "Lose shoe slot", 1, 3], ["Raw meatso", "Get Salmonella lose a level", 4, 4], ["Knify", "Stabs your hat, lose hat.", 3, 4], ["Frying panzo", "Burn your gloves off", 7, 5], ["Sudzy", "Lose a level", 10, 6]]

monsters.each do |name, bad_stuff, level, location_id|
  Monster.create(:name => name, :bad_stuff => bad_stuff, :level => level, :location_id => location_id)
end