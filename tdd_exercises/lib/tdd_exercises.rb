class Array
  def my_uniq
    r = []
    
    for i in 0..self.size - 1
      unless r.include?(self[i])
        r << self[i]
      end
    end

    r
  end

  def two_sum
    r = [] 
    
    for i in 0..self.size-1
      for j in 0..self.size-1
        r << [i, j] if self[i] + self[j] == 0 && j > i  
      end
    end

    r
  end

  def my_transpose 
    r = [] 
    
    (0...self[0].size).each do |i|
      r << self.map{|x| x[i]}
    end

    r
  end

  def stock_picker
    r = []
    for i in 0...self.size-1
      for j in i+1...self.size
        r.push([i, j])
      end
    end
    max = r.map{|x| self[x[1]] - self[x[0]]}.max

    r.select{|x| self[x[1]] - self[x[0]] == max}
  end
end