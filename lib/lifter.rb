class Lifter
  attr_reader :name, :lift_total
 @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all <<  self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |mem|
      mem.lifter == self
    end
  end

  def gyms
    self.memberships.collect do |mem|
      mem.gym
    end
  end

  def self.avg_lift
    total = self.all.sum do |lifter|
      lifter.lift_total
    end
     total / self.all.count 
  end

  def total_cost
    self.memberships.sum do |mem|
      mem.cost
    end
  end

  def new_membership(gym, cost)
    Membership.new(cost, self, gym)
  end
end
