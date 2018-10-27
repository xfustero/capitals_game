
require_relative 'game'

game = Game.new

puts "*********************************"
puts "*            Level I            *"
puts "*********************************"
puts ""

puts "Du benötigest 20 Punkte, um die nächste Phase zu erreichen. Jede richtige Frage bekommt ein Punkt."
puts ""

points = 0
loop do
  points = game.play_level1(points)
  break if points >= 20
end

puts "Sehr gut! Du hast Level 1 bestanden"
puts ""

puts "*********************************"
puts "*            Level II           *"
puts "*********************************"
puts ""
puts "Du benötigest 20 Punkte, um die nächste Phase zu erreichen. Jede richtige Frage bekommt ein Punkt."
puts ""

points = 0
loop do
  points = game.play_level2(points)
  break if points >= 20
end

puts "Sehr gut! Du hast Level 2 bestanden"
puts ""