module GameLogic
  def new_game_setup
    peices = {}
    # black
    peices['00'] = Rook.new(0, 0, :black)
    peices['01'] = Knight.new(0, 1, :black)
    peices['02'] = Bishop.new(0, 2, :black)
    peices['03'] = Queen.new(0, 3, :black)
    peices['04'] = King.new(0, 4, :black)
    peices['05'] = Bishop.new(0, 5, :black)
    peices['06'] = Knight.new(0, 6, :black)
    peices['07'] = Rook.new(0, 7, :black)
    peices['10'] = Pawn.new(1, 0, :black)
    peices['11'] = Pawn.new(1, 1, :black)
    peices['12'] = Pawn.new(1, 2, :black)
    peices['13'] = Pawn.new(1, 3, :black)
    peices['14'] = Pawn.new(1, 4, :black)
    peices['15'] = Pawn.new(1, 5, :black)
    peices['16'] = Pawn.new(1, 6, :black)
    peices['17'] = Pawn.new(1, 7, :black)
    # white
    peices['70'] = Rook.new(7, 0, :white)
    peices['71'] = Knight.new(7, 1, :white)
    peices['72'] = Bishop.new(7, 2, :white)
    peices['73'] = King.new(7, 3, :white)
    peices['74'] = Queen.new(7, 4, :white)
    peices['75'] = Bishop.new(7, 5, :white)
    peices['76'] = Knight.new(7, 6, :white)
    peices['77'] = Rook.new(7, 7, :white)
    peices['60'] = Pawn.new(6, 0, :white)
    peices['61'] = Pawn.new(6, 1, :white)
    peices['62'] = Pawn.new(6, 2, :white)
    peices['63'] = Pawn.new(6, 3, :white)
    peices['64'] = Pawn.new(6, 4, :white)
    peices['65'] = Pawn.new(6, 5, :white)
    peices['66'] = Pawn.new(6, 6, :white)
    peices['67'] = Pawn.new(6, 7, :white)

    peices
  end

  def print_board(peices)
    8.times do |row|
      8.times do |col|
        peice = peices["#{row}#{col}"]
        cell_text = peice ? peice.cell_text : '   '
        background_color = (col + row).even? ? '229' : '34'
        print "\e[37;48:5:#{background_color}m#{cell_text}\e[0m"
      end
      puts "\n"
    end
  end
end
