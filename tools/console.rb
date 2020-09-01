# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

lifter1 = Lifter.new("Alec",800)
lifter2 = Lifter.new("Walid",700)
lifter3 = Lifter.new("Jake",600)
lifter4 = Lifter.new("Haley",500)

g1 = Gym.new("Golds")
g2 = Gym.new("Planet Fitness")
g3 = Gym.new("24hr")

mem1 = Membership.new(20,lifter1,g1)
mem2 = Membership.new(30,lifter2,g2)
mem3 = Membership.new(40,lifter1,g1)
mem4 = Membership.new(50,lifter4,g2)

# g1 = Gym.new("Golds")
# g2 = Gym.new("Planet Fitness")

# test code goes here

#binding.pry

puts "Gains!"
