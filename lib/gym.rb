class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end
  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|m| m.gym == self}
  end

  def lifters
    self.memberships.collect{|m| m.lifter}
  end
  def lifter_names
    self.lifters.collect{|l| l.name}
  end

  def gym_lift_total
    (self.lifters.collect{|l| l.lift_total}).sum
  end

end
