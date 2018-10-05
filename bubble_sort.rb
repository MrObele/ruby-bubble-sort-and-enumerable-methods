require 'profile'
sample =[]
    1000000000.downto(1).each do |x|
    sample.push(x)

    end

def bubble_sort(input_array)
  
  finish_point = input_array.length - 2
    # start = Time.now
    (input_array.length - 1).times do
      for i in 0.upto(finish_point) do

        if input_array[i] > input_array[i + 1]
          input_array[i], input_array[i + 1] = input_array[i + 1], input_array[i]

        end
      
      end
      finish_point -= 1

    end

    puts input_array
    # puts Time.now - start
end


bubble_sort sample