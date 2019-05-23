require 'deck'

RSpec.describe "Deck" do
  d = Deck.new 

  describe "#initialize" do 
    it "should create a 52 card deck" do 
      expect(d.cards.size).to eq(52)
    end

    it "should create 4 suits" do 
      for suit in ["diamonds", "clubs", "spades", "hearts"]
        expect(d.cards.map{|x| x.suit}).to include(suit)
      end
    end

    it "should create 13 ranks" do 
      ranks = ["A"] + (2..10).to_a.map{|x| x.to_s} + ["J", "Q", "K"]
      for rank in ranks 
        expect(d.cards.map{|x| x.rank}).to include(rank)
      end
    end
  end
end