class Lifter
  @@all = []
  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|g| g.lifter == self}
  end 

  def gyms
    memberships.map {|m| m.gym}
    #memberships.map {|m| m.gym.name} returns only the strings
  end

  def self.average_lift
    total_lift = @@all.map {|lifter| lifter.lift_total}.sum
    total_lift / @@all.count
  end 

  def cost_of_memberships
    memberships.map {|membership| membership.cost}.sum
  end 

  def new_membership(cost, gym)
    Membership.new(cost, gym, self)
  end 
end
