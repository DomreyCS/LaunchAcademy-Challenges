class Ingredient
  def initialize(quantity, units, name)
    @quantity = quantity
    @units = units
    @name = name
  end

  def summary
    "#{@quantity} #{@units} #{@name}"
  end

  def valid?
    [
      "brussels sprouts",
      "spinach",
      "eggs",
      "milk",
      "tofu",
      "seitan",
      "bell peppers",
      "quinoa",
      "kale",
      "chocolate",
      "beer",
      "wine",
      "whiskey"
    ].include?(@name.downcase) ? true : false 
  end

  def self.parse(str)
    result = str.split

    quantity = result[0].to_i
    unit = result[1]
    name = result.length == 3 ? result[2] : result.slice(2, result.length).join(" ")

    Ingredient.new(quantity, unit, name)
  end
end

class Recipe
  attr_reader :name

  def initialize(name, instructions, ingredients)
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  def safe?
    @ingredients.reject {|ingredient| ingredient.valid?}.length == 0 ? true : false
  end

  def summary
    puts "Name: #{@name}\n"
    puts "\nIngredients"
    @ingredients.each { |ingredient| puts "- #{ingredient.summary}"}
    puts "\nInstuctions"
    @instructions.each_with_index do |instruction, index|
      puts "#{index + 1}. #{instruction}"
    end
    return
  end
end

safe_name = "Chocolate Quinoa"
safe_ingredients = [
        Ingredient.new(1.0, "cup", "quinoa"),
        Ingredient.new(1.0, "cup", "chocolate")
      ]
safe_instructions = [
        "Melt chocolate.",
        "Pour over quinoa.",
        "Regret your life."
      ]
safe_recipe = Recipe.new(safe_name, safe_instructions, safe_ingredients)
puts "Is #{safe_recipe.name} safe? #{safe_recipe.safe?}"

unsafe_name = "Mono-sodium-glutimate Quinoa"
unsafe_ingredients = [
        Ingredient.new(1.0, "cup", "quinoa"),
        Ingredient.new(1.0, "cup", "MSG")
      ]
unsafe_instructions = [
        "Melt MSG.",
        "Pour over quinoa.",
        "Regret your life."
      ]
unsafe_recipe = Recipe.new(unsafe_name, unsafe_instructions, unsafe_ingredients)
puts "Is #{unsafe_recipe.name} safe? #{unsafe_recipe.safe?}"
