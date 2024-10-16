class King < Peice
  attr_reader :cell_text

  def initialize(row, col, color)
    super(row, col, color)
    @cell_text = if color == :white
                   " \u2654 "
                 else
                   " \u265A "
                 end
  end
end
