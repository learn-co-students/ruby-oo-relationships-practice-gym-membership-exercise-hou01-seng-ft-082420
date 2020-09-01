class Lifter
  
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|m| m.lifter == self}
  end

  def gyms
    self.memberships.collect {|m| m.gym}
  end

  def self.total_lift
    (self.all.sum {|l| l.lift_total}) / self.all.length
  end

  def membership_cost
    self.memberships.sum {|m| m.cost}
  end

  def sign_up(gym,cost)
    Membership.new(self, gym, cost)
  end
end
