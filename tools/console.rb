# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
#billy

b = Lifter.new("billy", 1200)
s = Lifter.new("sara", 600)
r = Lifter.new("ryan", 1000)
pf = Gym.new("Planet Fitness")
life = Gym.new("Lifetime Fitness")
f45 = Gym.new("F45")
m1 = Membership.new(b, f45, 160)
m2 = Membership.new(s, f45, 170)
m3 = Membership.new(b, pf, 10)
m4 = Membership.new(r, life, 100)


binding.pry

puts "Gains!"
