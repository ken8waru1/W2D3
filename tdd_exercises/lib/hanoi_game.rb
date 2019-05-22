class Hanoi
  attr_reader :stacks

  def initialize
    # Stacks: 0, 1, 2
    @stacks = [[3, 2, 1], [], []]
  end

  def get_input
    input = gets.chomp # 1, 2
    input.split(",").map{|x| x.to_i}
  end

  # check that !@stacks[start_idx].nil?
  # check that !(@stacks[end_idx][-1] > @stacks[start_idx][-1])
  def valid_move?(start_idx, end_idx)
    return true if @stacks[end_idx].empty?
    return false if @stacks[start_idx].empty? || @stacks[end_idx][-1] < @stacks[start_idx][-1]
  end

  def move
     
  end



end