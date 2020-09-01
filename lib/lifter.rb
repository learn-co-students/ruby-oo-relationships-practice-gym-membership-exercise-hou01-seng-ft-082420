class Lifter
  #billy
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
    Membership.all.select{|memberships| memberships.lifter == self}
  end 

  def gyms
    #decided gym names would be more useful than the gym objects
    self.memberships.collect{|memberships| memberships.gym.name}
  end 

  def self.avg_lift
    (self.all.sum{|lifter| lifter.lift_total})/self.all.count
  end 

  def cost
    self.memberships.sum{|memberships| memberships.cost}
  end 

  def new_membership(gym, cost)
    Membership.new(self, gym, cost)
  end 

end
