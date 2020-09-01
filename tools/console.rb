# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# Begin Test Variables
l1 = Lifter.new("Arnold", 650)
l2 = Lifter.new("Sylvester", 400)
l3 = Lifter.new("Lou", 350)

g1 = Gym.new("Gold's")
g2 = Gym.new("Planet")
g3 = Gym.new("24")

m1 = Membership.new(l1, g3, 25)
m2 = Membership.new(l2, g1, 50)
m3 = Membership.new(l3, g2, 10)
m4 = Membership.new(l2, g3, 37)
# End Test Variables
binding.pry

puts "Gains!"
