class Bishop < Peice
  attr_reader :cell_text

  def initialize(row, col, color)
    super(row, col, color)
    @cell_text = if color == :white
                   " \u2657 "
                 else
                   " \u265D "
                 end
  end
end
