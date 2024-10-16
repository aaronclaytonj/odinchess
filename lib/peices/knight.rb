class Knight < Peice
  attr_reader :cell_text

  def initialize(row, col, color)
    super(row, col, color)
    @cell_text = if color == :white
                   " \u2658 "
                 else
                   " \u265E "
                 end
  end
end
