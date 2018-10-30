class Container
  attr_reader :weight, :maximum_holding_weight, :ingredients

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def fill_with_ingredient(ingredient)
    current_holding_weight = 0
    loop do
      current_holding_weight += ingredient.weight
      @ingredients << ingredient
      break if ingredient.weight + current_holding_weight > @maximum_holding_weight
    end
    @weight += current_holding_weight.round
  end

  def which_ingredient
    @ingredients[0].name
  end

  def how_many_ingredients
    @ingredients.count
  end

  def remove_one_ingredient
    @ingredients.pop
  end

  def empty
    @ingredients = []
  end
end