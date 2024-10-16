class Queen < Peice
  attr_reader :cell_text

  def initialize(row, col, color)
    super(row, col, color)
    @cell_text = if color == :white
                   " \u2655 "
                 else
                   " \u265B "
                 end
  end
end
