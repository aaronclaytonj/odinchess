require './lib/game'

puts 'New game press 1, load game press 2'
puts 'Enter any thing else to quit'
input = gets.chomp

if input == '1'
  game = Game.new(nil)
  game.play
elsif input == '2'
  # game = Game.new()
  puts 'need to implement loading file'
end

puts 'Quitting...'
