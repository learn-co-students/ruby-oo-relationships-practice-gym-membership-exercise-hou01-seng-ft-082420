# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
gym1 = Gym.new("24 Hrs")
gym2 = Gym.new("Equinox")
gym3 = Gym.new("Lifetime")

l1 = Lifter.new("Vince", 80)
l2 = Lifter.new("Kelsey", 60)
l3 = Lifter.new("Kayla", 40)

mem1 = Membership.new(100, l1, gym1)
mem2 = Membership.new(200, l2, gym2)
mem3 = Membership.new(300, l3, gym3)
mem4 = Membership.new(100, l3, gym2)
mem5 = Membership.new(300, l1, gym3)
mem6 = Membership.new(300, l1, gym3)
binding.pry

puts "Gains!"
