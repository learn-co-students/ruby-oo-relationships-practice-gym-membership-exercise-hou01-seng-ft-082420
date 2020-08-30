
require_relative '../config/environment.rb'

# Gym <-> Membership <-> Lifter

#Base Instances
g = Gym.new("Equinox")
l = Lifter.new("Bree", 967)

#Association Instance
m = Membership.new(186, l, g)

#Additional Instances
g2 = Gym.new("Yogaworks")
l2 = Lifter.new("Ambreea", 475)
m2 = Membership.new(74, l, g2)


binding.pry

puts "Gains!"


#Lifter
# Get a list of all lifters - DONE
# Get a list of all the memberships that a specific lifter has - DONE
# Get a list of all the gyms that a specific lifter has memberships to - DONE
# Get the average lift total of all lifters - DONE
# Get the total cost of a specific lifter's gym memberships - DONE
# Given a gym and a membership cost, sign a specific lifter up for a new gym - DONE

# Membership
# Get a list of all memberships - DONE

# Gym
# Get a list of all gyms - DONE
# Get a list of all memberships at a specific gym - DONE
# Get a list of all the lifters that have a membership to a specific gym - DONE
# Get a list of the names of all lifters that have a membership to that gym - DONE
# Get the combined lift total of every lifter has a membership to that gym - DONE