class Gym
  #billy
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
    Membership.all.select{|memberships| memberships.gym == self}
  end 

  def lifters
    self.memberships.collect{|memberships| memberships.lifter}
  end 

  def lifter_names
    self.members.collect{|lifters| lifters.name}
  end

  def lift_total
    self.members.sum{|lifters| lifters.lift_total}
  end 

end
