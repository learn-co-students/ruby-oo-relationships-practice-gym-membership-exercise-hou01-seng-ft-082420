class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    memberships.map {|membership| membership.gym}
  end

  def self.lift_total
    lift_totals = self.all.sum {|lifter| lifter.lift_total}
    lift_totals / self.all.count
  end

  def membership_cost
    memberships.sum {|membership| membership.cost}
  end

  def new_lifter(cost, gym)
    Membership.new(cost, self, gym)
  end

end
