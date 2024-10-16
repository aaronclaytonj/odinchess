class Pawn < Peice
  attr_reader :cell_text

  def initialize(row, col, color)
    super(row, col, color)
    @cell_text = if color == :white
                   " \u2659 "
                 else
                   " \u265F "
                 end
  end
end
