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
    Membership.all.select {|m| m.gym == self}
  end

  def members
    self.memberships.collect {|m| m.lifter}
  end

  def total_lifts
    arr = self.members.collect {|l| l.lift_total}
    (arr.sum)
  end
end
