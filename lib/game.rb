require './lib/game_logic'
require './lib/peice'
require './lib/peices/pawn'
require './lib/peices/king'
require './lib/peices/queen'
require './lib/peices/rook'
require './lib/peices/bishop'
require './lib/peices/knight'
class Game
  attr_reader :peices, :is_game_over

  include GameLogic

  def initialize(board)
    @peices = board || new_game_setup
    @game_over = false
  end

  def play
    input = ''
    until is_game_over || input == 'quit'
      print_board(peices)
      puts 'player turn, type quit to exit'
      input = gets.chomp
    end
  end
end
