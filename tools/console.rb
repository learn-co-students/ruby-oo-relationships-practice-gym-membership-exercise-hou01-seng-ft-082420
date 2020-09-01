# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
alex = Lifter.new("Alex Mata", 150)
brian = Lifter.new("Brian G.", 200)
zach = Lifter.new("Zach G.", 250)
karo = Lifter.new("Karo Cantu", 100)

y = Gym.new("YMCA")
la = Gym.new("LA Fitness")
twenty_four = Gym.new("24 Hour Fitness")

member1 = Membership.new(y, alex, 40)
member2 = Membership.new(y, zach, 20)
member3 = Membership.new(twenty_four, brian, 45)
member4 = Membership.new(twenty_four, zach, 45)

binding.pry

puts "Gains!"
