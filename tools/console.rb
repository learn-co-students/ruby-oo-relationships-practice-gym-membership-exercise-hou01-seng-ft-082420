# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 = Lifter.new("Mike", 9000)
l2 = Lifter.new("J", 7000)

g1 = Gym.new("GloboGym")
g2 = Gym.new("Average Joe's")

m1 = Membership.new(20, g1, l1)
m2 = Membership.new(10, g2, l1)
m3 = Membership.new(500, g1, l2)

binding.pry

puts "Gains!"
