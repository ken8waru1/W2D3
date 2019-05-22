require 'tdd_exercises'

RSpec.describe "Array#my_uniq" do 
  a = [1, 2, 1, 3, 3]
  b = [1, 2, 3]
  it "should remove duplicates from a non-unique array" do 
    expect(a.my_uniq).to eq(a.uniq)
  end

  it "should return an unmodified if array is unique" do 
    expect(b.my_uniq).to eq(b)
  end
end

RSpec.describe "Array#two_sum" do
  a = [-1, 0, 2, -2, 1]
  b = [1, 5, 3]
  
  it "should return pairs that sum to zero" do 
    expect(a.two_sum).to eq([[0, 4], [2, 3]])
  end

  it "should return an empty array if no pairs sum to zero" do 
    expect(b.two_sum). to eq([])
  end
end

RSpec.describe "Array#my_transpose" do 
  a = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]

  it "should transpose the array" do 
    expect(a.my_transpose).to eq(a.transpose)
  end
end

RSpec.describe "Array#stock_picker" do
  stocks = [3, 8, 4, 1, 10, 2]
  it "should choose the pair of days which give the highest profit" do 
    expect(stocks.stock_picker).to eq([[3, 4]])
  end
end