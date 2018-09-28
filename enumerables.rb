
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

    def my_all?
      for i in 0...self.length do
        if yield(self[i]) == false
          return false
        end
      end
      return true
    end
    
    def my_any?
      for i in 0...self.length do
        if yield(self[i]) == true
          return true
        end
      end
      return false
    end

    def my_none?
      for i in 0...self.length do
        if yield(self[i]) == false
        else
          return false
        end
      end
     return true
    end

    def my_count
     if block_given?
      counter = 0
      for i in 0...self.length do
        if yield(self[i]) == true
        counter+= 1
        end
      end
      counter
    else
      self.size
    end
    end

  end

puts [1,5,4].my_count