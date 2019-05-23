require_relative 'card.rb'

class Deck 
  attr_reader :cards 

  SUITS = ["hearts", "diamonds", "spades", "clubs"] 
  RANKS = ["A"] + (2..10).to_a.map{|x| x.to_s} + ["J", "Q", "K"] 

  def initialize 
    @cards = []
    set_up_deck
  end

  def set_up_deck 
    for suit in SUITS
      for rank in RANKS
        @cards << Card.new(suit, rank)
      end
    end
  end

end