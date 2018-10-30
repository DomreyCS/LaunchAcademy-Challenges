class CookieInventory
  def initialize
    @inventory = {
      peanut_butter: 0,
      chocolate_chip: 0,
      sugar: 0
    }
  end

  def cook_batch!(type, amount)
    @inventory[type.to_sym] += amount
  end

  def sell!(type, amount)
    @inventory[type.to_sym] - amount >= 0 ? @inventory[type.to_sym] -= amount : "Sold Out!"
  end
end