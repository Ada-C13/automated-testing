
# deck.rb

require_relative 'card'

class Deck

  attr_reader :decks

  def initialize
    valid_value = [1,2,3,4,5,6,7,8,9,10,11,12,13]
    valid_suit = [:hearts, :spades, :clubs, :diamonds]
    @decks = []
    valid_value.each do |value|
      valid_suit.each do |suit|
        card = Card.new(value,suit)
        @decks << card
      end 
    end 
  end

  def draw
    # returns a card
    card = decks.sample
    @decks = @decks.reject {|cards| cards == card}
    return card 
  end

  def shuffle
    @decks.shuffle!
  end

  def count
    return decks.length
  end 
end
