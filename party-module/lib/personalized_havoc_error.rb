class PersonalizedHavocError < StandardError
  def initialize(msg="Your causing too much havoc!")
    super
  end
end