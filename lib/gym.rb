class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |mem|
      mem.gym == self
    end
  end

  def lifters
    self.memberships.collect do |mem|
        mem.lifter
    end.uniq  
  end

  def names
    self.lifters.collect do |lifter|
      lifter.name
    end
  end

  def total_lift
    self.lifters.sum do |lifter|
      lifter.lift_total
    end
  end
end
