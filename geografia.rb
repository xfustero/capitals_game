

require_relative 'game'

points = 0
errors = 0

def start_level1
  puts "*********************************"
  puts "*            Level I            *"
  puts "*********************************"
  puts ""

  puts "Du benötigest 20 Punkte, um die nächste Phase zu erreichen. Jede richtige Frage bekommt ein Punkt."
  puts ""
  points = 0
  errors = 0
end

def start_level2
  puts "Du hast Level 1 bestanden"
  puts ""
  puts "*********************************"
  puts "*            Level II           *"
  puts "*********************************"
  puts ""
  puts "Du benötigest 20 Punkte, um die nächste Phase zu erreichen. Jede richtige Frage bekommt ein Punkt."
  puts ""
  points = 0
  errors = 0
end

game = Game.new
# start_level1
# loop do
#   points, errors = game.play_level1(points,errors)
#   break if points >= 20
#   if errors > 3
#     puts "Du hast mehr dann 3 Fehler gemacht!!"
#   	start_level1
#   end	
# end

start_level2
points = 0
loop do
  points = game.play_level2(points)
  break if points >= 20
end

puts "Sehr gut! Du hast Level 2 bestanden"
puts ""