# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

puts "Gains!"

#Schema
# A Gym has many Lifters through Memberships
# A Lifer has many Gyms through Memberships

puts "#------------------------------"
puts "* Create Gyms"
puts golds = Gym.new("Gold's Gym")
puts fitness_sf = Gym.new("Fitness SF")

puts "#------------------------------"
puts "* Create Lifters"
puts brutus = Lifter.new("Brutus", 210)
puts darla = Lifter.new("Darla", 225)

puts "#------------------------------"
puts "* All Gyms"
puts Gym.all

puts "#------------------------------"
puts "* All Lifter"
puts Lifter.all

puts "#------------------------------"
puts "* Create Membership"
puts m1 = brutus.get_membership(150, golds)
puts m2 = brutus.get_membership(170, fitness_sf)
puts m3 = darla.get_membership(170, fitness_sf)

puts "#------------------------------"
puts "* All Memberships"
puts Membership.all

puts "#------------------------------"
puts "* Get a list of all memberships at a specific gym"
puts fitness_sf.list_memberships
puts "-------------"
puts golds.list_memberships

puts "#------------------------------"
puts "* Get a list of all memberships a specific lifter has"
puts darla.list_memberships
puts "-------------"
puts brutus.list_memberships

puts "#------------------------------"
puts "* Get a list of all gyms a specific lifter has a membership to"
puts brutus.list_gyms
#puts "-------------"
#puts brutus.list_memberships

puts "#------------------------------"
puts "Get the average lift total of all lifters"
puts Lifter.avg_total

puts "#------------------------------"
puts "Get the total cost of a specific lifter's gym memberships"
puts brutus.gym_costs


#binding.pry
