# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

g1 = Gym.new("Lift stuff")
g2 = Gym.new("Put stuff down")

l1 = Lifter.new("Doug", 8)
l2 = Lifter.new("Spencer", 18)

m1 = Membership.new(98, g1, l1)
m2 = Membership.new(135, g2, l1)
m3 = Membership.new(98, g1, l2)

binding.pry

puts "Gains!"
