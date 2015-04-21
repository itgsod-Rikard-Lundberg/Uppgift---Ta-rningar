class Dice
  attr_writer :sides
  attr_reader :value


  def initialize(sides:)
    if sides == 1
      raise ArgumentError.new('one sided dices')
    end
    @sides = sides
    @value = nil
  end

  def roll
    @value = rand(@sides) + 1
  end


end