# Advent Of Code 2019
# https://adventofcode.com/2019/day/1
# Part 1
# Read in the directions
directions = File.read("input.txt").split("\n").map(&:strip)

#Fuel Total
total_fuel_required = 0

def calculate_fuel_required(mass)
  fuel = ((mass.to_i / 3).floor) - 2
end

directions.each do |i|
  total_fuel_required += calculate_fuel_required(i.to_i)
end

puts "THE TOTAL FUEL REQUIRED IS: #{total_fuel_required}"
