class Gym
  
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name

    self.class.all << self
  end

  def membership
    Membership.all.select {|m| m.gym == self}
    #self.all.select 
  end

  def lifters
    membership.collect {|n| n.name}
  end

  def lifter_names
    membership.collect {|n| n.name}
  end

  def self.all
    @@all
  end

  def total
    membership.collect {|n| n.name.lift_total}.sum
  end


end
