class Membership
  attr_reader :cost, :name, :gym

  @@all = []
  def initialize(cost,name,gym)
    @cost = cost
    @name = name
    @gym = gym

    self.class.all << self
  end

  def self.all
    @@all
  end
end
