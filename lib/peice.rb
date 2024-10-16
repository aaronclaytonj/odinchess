class Peice
  attr_reader :col, :row, :color

  def initialize(row, col, color)
    @col = col
    @row = row
    @color = color
  end
end
