require 'card'

RSpec.describe "Card" do 
  subject(:card){Card.new(:diamond, :K)}
  describe "#initialize" do 
    it "should generate a card suit and number" do 
      expect(card.suit).to eq(:diamond)
      expect(card.rank).to eq(:K)
    end
  end
end