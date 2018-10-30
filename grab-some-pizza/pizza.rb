class Pizza
  TOPPINGS = {
    cheese: 0.10,
    green_pepper: 0.30,
    onion: 0.50,
    mushroom: 0.70,
    pepperoni: 1.10,
    jalapeno: 1.30,
    sausage: 1.70,
    bacon: 1.90
  }
  attr_accessor :toppings
  def initialize(order=[:cheese])
    @order = order
  end

  def meat
    @order + [:sausage, :pepperoni, :bacon]
  end

  def other_toppings
    @order + [:cheese, :green_pepper, :onion, :mushroom, :jalapeno]
  end

  def cost
    cost = 8.00
    @order.each {|topping| cost += TOPPINGS[topping]}
    "$%0.2f" % [cost]
  end

  def self.toppings
    TOPPINGS.each do |topping, cost|
      # the gsub method allows us to switch out underscores for spaces:
      formatted_topping_name = topping.to_s.gsub('_',' ')

      # the following syntax formats a float to display two decimal places:
      formatted_cost = '%.2f' % cost

      puts "#{formatted_topping_name} - $#{formatted_cost}"
    end
  end
end
