class SuperHero
  attr_reader :public_identity, :secret_identity


  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    ""
  end

  def weakness
    ""
  end

  def backstory
    ""
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end

end

class Speedster < SuperHero
  def speed_in_mph
    super * 1000
  end
  def backstory
    "Struck by lighting"
  end
  def powers
    "Brainy"
  end
  def weakness
    "Poor"
  end
end

class Brawler < SuperHero
  def backstory
    "Science experiment"
  end

  def powers
    "Super dense bones"
  end

  def weakness
    "Milk"
  end

  def health
    super * 20
  end
end

class Detective < SuperHero
  def backstory
    "Tragic death of pet hamsters"
  end

  def powers
    "I'm rich"
  end

  def weakness
    @secret_identity
  end

  def speed_in_mph
    super * 1/6
  end
end

class Demigod < SuperHero
  def home
    "Cosmic Plane"
  end
  def backstory
    "Sole survivor of blown-up cosmic plane"
  end

  def powers
    "Telepathy"
  end

  def weakness
    "Fire"
  end
end

class JackOfAllTrades < SuperHero
  def species
    "Alien"
  end

  def home
    "Venus"
  end

  def psychic?
    true
  end

  def backstory
    "Experiment gone wrong"
  end

  def powers
    "Super intelligence"
  end

  def weakness
    "Osteopirosis"
  end
end

class WaterBased < SuperHero
  def fans_per_thousand
    5
  end

  def home
    "Earth's Oceans"
  end

  def powers
    "Super durability"
  end

  def weakness
    "Dry skin"
  end

  def backstory
    "Father was poor and mom was Royalty"
  end

  def psychic?
    true
  end
end
