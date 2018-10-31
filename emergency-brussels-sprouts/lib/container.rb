class Container
  attr_reader :weight, :maximum_holding_weight, :ingredients 

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def fill_with_ingredient(ingredient)
    fill = 0

    while fill < @maximum_holding_weight do
      fill += ingredient.weight
      @ingredients << ingredient.name
    end
    
    @weight += fill.round
  end

  def which_ingredient
    ingredients[0]
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