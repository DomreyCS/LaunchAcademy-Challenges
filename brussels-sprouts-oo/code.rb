class Ingredient
  def initialize(quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summary
    "#{@quantity} #{@unit} #{@name}"
  end
end

class Recipe
  attr_reader(:name, :instructions, :ingredients)

  def initialize(name, ingredients, instructions)
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  def summary
    puts "Name: #{@name}"
    puts "\nIngredients"
    @ingredients.each {|ingredient| puts "- #{ingredient.summary}"}
    puts "\nInstructions"
    @instructions.each_with_index { |step, index| puts "#{index + 1}. #{step}"}
    return nil
  end
end

## Example cases
roasted_brussels_recipe = Recipe.new("Roasted Brussels Sprouts",
  [
  Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
  Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
  Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
  Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
],
[
  "Preheat oven to 400 degrees F.",
  "Cut off the brown ends of the Brussels sprouts.",
  "Pull off any yellow outer leaves.",
  "Mix them in a bowl with the olive oil, salt and pepper.",
  "Pour them on a sheet pan and roast for 35 to 40 minutes.",
  "They should be until crisp on the outside and tender on the inside.",
  "Shake the pan from time to time to brown the sprouts evenly.",
  "Sprinkle with more kosher salt ( I like these salty like French fries).",
  "Serve and enjoy!"
  ]
)

omlete_recipe = Recipe.new("Asian Omellete",
  [
  Ingredient.new(8.0, "large", "Eggs"),
  Ingredient.new(4.0, "tbspn(s)", "Chinese rice wine or dry sherry"),
  Ingredient.new(2.0, "tspn(s)", "Sesame oil"),
  Ingredient.new(4.0, "tbspn(s)", "Vegtable oil"),
  Ingredient.new(450.0, "gram(s)", "Cooked prawns"),
  Ingredient.new(400.0, "gram(s)", "Beansprout, rinsed and drained")
],
[
  "Crack 2 eggs into a small bowl and lightly beat in 1 tbsp rice wine, salt, pepper and 1/2 tsp sesame oil.",
  "Heat 1 tbsp vegetable oil in a hot wok or large frying pan over high heat",
  "Pour in the beaten eggs and quickly swirl to form an even omelette.", 
  "Cook for 2 to 3 minutes until the egg is firm, then lower the heat.",
  "Arrange some prawns in the centre",
  "Top with bean sprouts and watercress",
  "Cook gently for 2 or 3 minutes.",
  "Gently slide the omelette onto a warm plate, folding it over.",
  "Drizzle with oyster or hoisin sauce to serve."
  ]
)

[roasted_brussels_recipe, omlete_recipe].each {|recipe| puts recipe.summary}