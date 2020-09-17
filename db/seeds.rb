puts "In order to seed the database, run:"
#puts "$ bin/rake db:fixtures:load"
#puts "Your database will be filled with test fixtures which are quite good"
#puts "for development, too."

recipe_one = Recipe.create(cuisine: "mexican", name: "recipe onions", instructions: "cortar las cebollas", cooking_time: 10)
Ingredient.create(name: "onion", recipe_id: recipe_one.id)

recipe_two = Recipe.create(cuisine: "mexican", name: "ribs", instructions: "put the rib on the grill", cooking_time: 5)
Ingredient.create(name: "ribs", recipe_id: recipe_two.id)

recipe_three = Recipe.create(cuisine: "mexican", name: "tomato sauce", instructions: "roast the tomatoes and blend with chili and coriander", cooking_time: 8)
Ingredient.create(name: "tomato", recipe_id: recipe_three.id)
Ingredient.create(name: "chili", recipe_id: recipe_three.id)
Ingredient.create(name: "coriander", recipe_id: recipe_three.id)

recipe_four = Recipe.create(cuisine: "italian", name: "cheese pizza", instructions: "add lots of cheese to pizza bread and microwave", cooking_time: 25)
Ingredient.create(name: "tomato", recipe_id: recipe_four.id)
Ingredient.create(name: "bread", recipe_id: recipe_four.id)
Ingredient.create(name: "cheese", recipe_id: recipe_four.id)


puts "END."