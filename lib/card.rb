
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
    valid_value = [1,2,3,4,5,6,7,8,9,10,11,12,13]
    valid_suit = [:hearts, :spades, :clubs, :diamonds]

    unless (valid_value.include?(@value) && valid_suit.include?(@suit))
      raise ArgumentError.new("Invalid input")
    end 
  end

  def to_special_value
    if @value == 1 
      return "Ace"
    elsif @value == 11
      return "Jack"
    elsif @value == 12
      return "Queen"
    elsif @value == 13
      return "King"
    end 
  end 

  def to_s
    if [1,11,12,13].include?(value)
      return "#{self.to_special_value} of #{suit.to_s}"
    else
    return "#{value} of #{suit.to_s}"
    end 
  end

end
