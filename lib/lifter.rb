class Lifter
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
    Membership.all.select { |membership| membership.lifter == self}
  end 

  def gyms
    (self.memberships.collect { |membership| membership.gym } ).uniq 
    #this is usually a unique list - if someone has multiple memberships 
    #at one place, it should only be listed once 
  end 
  
  def self.avg_lift_total
    lift_total = self.all.sum { |lifter| lifter.lift_total}
    lift_total / self.all.length
  end 

  def total_cost
    self.memberships.sum { |membership| membership.cost}
  end 

  def new_membership(gym,cost)
    Membership.new(self,gym,cost)
  end 
end
