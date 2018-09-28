
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

    def my_map(proc = false)
      result = []
      if proc
      
        for i in 0...self.length do
          result << proc.call(self[i]) 

        end
        result
      else
        for i in 0...self.length do
          result << yield(self[i]) 

        end
        result
      end
    end

    def my_inject
      accumulator = self[0]
      for i in 1...self.length do
        accumulator =  yield(accumulator,self[i])
      end
      accumulator
    end



  end

  def multiply_els(user_input)
    user_input.my_inject{|x,y| x*y}
  end





test_map = Proc.new{|x| x**2}

puts [1,4,6,7].my_map(&test_map )