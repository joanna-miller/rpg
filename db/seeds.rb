# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

weapons = [["Candy Cane Staff", "Magic", 10], ["Carrot Sword", "Melee", 7], ["Sliced Tomato", "Defense", 4], ["String Cheese Bow", "Ranged", 4], ["Candy Cane Bow", "Ranged", 10]]

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

