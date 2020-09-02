# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

#Basic Attributes
    #Lifters
    man = Lifter.new('man',225)
    
    #Gyms
    g1 = Gym.new('larrys')

    #Memberships
    m1 =  Membership.new(man,g1,100)
----------------


binding.pry

puts "Gains!"
