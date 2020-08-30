class Gym
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end 

  def lifters
    memberships.map {|membership| membership.lifter}
    #memberships.map {|membership| membership.lifter.name} returns only the string
  end 

  def lifters_names
    memberships.map {|membership| membership.lifter.name}
  end 

  def combined_lift_total
    lifters.map {|lifter| lifter.lift_total}.sum
  end 

end
