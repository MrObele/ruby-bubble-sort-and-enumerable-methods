
  module Enumerable


    def my_each
      for i in 0...self.length do
        yield(self[i])
      end
      
    end

    def my_each_with_index

      for i in 0...self.length do
        yield(self[i], i)
      end
      
    end


    def my_select
      result = []
      
      for i in 0...self.length do
    if yield(self[i]) == true

      result << self[i] 

    end
      end
     result
    end
    
  end




tester = [1, 2, 3, 10, 22, 11, 54, 99]


even = tester.my_select do |x| x % 2 == 0 end

puts even

puts tester