class Rook < Peice
  attr_reader :cell_text

  def initialize(row, col, color)
    super(row, col, color)
    @cell_text = if color == :white
                   " \u2656 "
                 else
                   " \u265C "
                 end
  end
end
