class Hamming

  def self.compute(a , b)    
    a = a.chars
    b = b.chars
    hamming_distance = 0
    raise ArgumentError, "The String lengths are not equal" if a.length != b.length 
    
    loop do    
      if  a[0] == nil
        puts hamming_distance
        exit
      elsif a[0] == b[0]
        a.shift
        b.shift
      else a[0] != b[0]
        hamming_distance += 1
        a.shift
        b.shift
      end      
    end     
  end 
end
