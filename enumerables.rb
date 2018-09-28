
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

      if block_given?
        for i in 0...self.length do
        
          if yield(self[i]) == false
            return false
          end

        end
        return true
      else
        self.my_each { |x|
        return false if (x && true) != true
      }
      return true
      end
    
    end
    
    def my_any?

      if block_given?
        for i in 0...self.length do
          if yield(self[i]) == true
            return true
          end
        end
          return false
      else
        self.my_each { |x|
          return true if (x && true) == true
        }
        return false
      end
    end

    def my_none?
      if block_given?
        for i in 0...self.length do
          if yield(self[i]) == false
          else
            return false
          end
        end
        return true
      else
        self.my_each { |x|
        return false if (false && x) != false
      }
      return true
      end
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

puts [false, false, false, false].my_none?