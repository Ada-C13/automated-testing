require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases

  describe "Deck can create instances" do 

    it "deck should have 52 cards" do 
      deck_length = Deck.new.decks.length 
      expect(deck_length).must_equal 52
    end 

    it "each card in decks should be a Card class" do 
      deck = Deck.new
      expect(deck.decks[0]).must_be_kind_of Card
    end 

  end 

  describe "draw method" do 
    it "return a card class when draw" do 
      card = Deck.new.draw
      expect(card).must_be_kind_of Card
    end 

    it "read the card from that was drew" do 
      card = Deck.new.draw
      expect(card.to_s).must_be_kind_of String
      expect([:hearts, :spades, :clubs, :diamonds].include?(card.suit)).must_equal true
    end 
    it "will return 2 less card" do 
      decks = Deck.new
      decks.draw
      decks.draw
      expect(decks.decks.length).must_equal 50
    end 

    it "will return false since draw card doesn't exist in deck" do 
      decks = Deck.new
      card = decks.draw
      expect(decks.decks.include?(card)).must_equal false 
    end 

  end 

  # describe "Shuffle method" do 
  #   it "return "
  # end 

end
