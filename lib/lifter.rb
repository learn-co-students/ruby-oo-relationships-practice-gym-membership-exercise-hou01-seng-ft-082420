require 'pry'
class Lifter
  attr_reader :name, :lift_total

  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    self.class.all << self
  end

  def membership
    Membership.all.select {|m| m.name == self}
  end

  def gyms
    (Membership.all.select {|g| g.name == self}).collect{|g| g.gym.name}
  end

  def self.lift_total
    total = self.all.sum {|lt| lt.lift_total}
    total / self.all.count
  end

  def self.all
    @@all
  end

  def gym_cost
    membership.collect {|gc| gc.cost}.sum
  end

  def new_gym(gym,cost)
    Membership.new(gym,self,cost)
  end


end
