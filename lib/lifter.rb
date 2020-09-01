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

  def membership
    Membership.all.select {|m| m.lifter == self}
  end

  def self.average_lifts
    arr = @@all.collect{|l| l.lift_total}
    (arr.sum)/(arr.count)
  end

  def total_cost
    c =self.membership.collect {|m| m.cost}
    return "$#{c.sum}"
  end

  def sign_up(gym, cost)
    Membership.new(cost, gym, self)
  end

end
