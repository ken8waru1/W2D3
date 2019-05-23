class Hand
  attr_reader :cards
  def initialize
    @cards = []
  end

  def three_of_a_kind?(cards)
    ranks = cards.map{|x| x.rank}
    ranks.any?{|x| rank.count(x) == 3}
  end

  def two_pair?(cards)
    ranks = cards.map{|x| x.rank}

  end

  def pair?(cards)
    ranks = cards.map{|x| x.rank}
    ranks.any?{|x| rank.count(x) == 2}
  end
end