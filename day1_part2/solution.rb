# Advent Of Code 2019
# https://adventofcode.com/2019/day/1
# Part 2
# Read in the directions
directions = File.read("input.txt").split("\n").map(&:strip)
#directions = File.read("inputtest.txt").split("\n").map(&:strip)

#Fuel Total
total_fuel_required = 0

def calculate_fuel_required_reco(mass)
  fueltank = 0
  while mass >= 0
    mass = convert_fuel(mass)
    if mass > 0
      fueltank += mass
    end
  end
  #Check if we are done
  return fueltank
end

def convert_fuel(m)
  fuel = ((m.to_i / 3).floor) - 2
end

directions.each do |i|
  total_fuel_required += calculate_fuel_required_reco(i.to_i)
end

puts "THE TOTAL FUEL REQUIRED IS: #{total_fuel_required}"
