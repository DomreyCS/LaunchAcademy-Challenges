require_relative 'personalized_havoc_error'

module PartyGoer
  @@drink_count = 0
  def drink
    if @@drink_count == 4
      return false
    else
      @@drink_count += 1
      return true
    end
  end

  def sing
    "La La La La"
  end

  def cause_havoc
    raise PersonalizedHavocError, "Your causing too much havoc!" 
  end
end

module Invited
  def invited?
    true
  end
end