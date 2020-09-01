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
    Membership.all.select{|m| m.lifter == self}
  end
  def gyms
    self.memberships.collect{|m| m.gym }
  end
  
  def self.average_lift
    #(Lifter.all.collect{|l| l.lift_total}).sum / (Lifter.all.collect{|l| l.lift_total}).size
    total = (Lifter.all.collect{|l| l.lift_total}).sum
    lifters = (Lifter.all.collect{|l| l.lift_total}).size
    total / lifters
  end

  def total_cost
    mems = Membership.all.select{|m| m.lifter == self}
    cost = (mems.collect{|m| m.cost}).sum
    cost
  end

  def sign_up(gym, cost)
    Membership.new(gym, self, cost)
  end

end
