# stock_picker.rb

stock_array = [17, 3, 6, 9, 15, 8, 6, 1, 10] # make sure edge cases work correctly


# START METHOD
def stock_picker(stock_array)

  # [1,4] [buy, sell] best day to buy and then sell
  # take current_index of the array and compare it to values ahead < stock_array.length

  buy_sell = []
  largest_sum = 0
  current_index = 0

  stock_array.each_with_index { |value, index|

    i =  index + 1

    puts "#{value}: next index #{i}"

    while i < stock_array.length do

      if value < stock_array[i]

        sum = stock_array[i] - value

        puts "#{sum} = #{stock_array[i]} - #{value}"


        if sum > largest_sum

          largest_sum = sum

          buy_sell.pop()
          buy_sell.pop()

          buy_sell.push(index)
          buy_sell.push(i)
        
        end

        i += 1

      else

        i += 1

      end

    end

  }

  puts largest_sum # Prints largest_sum for when best day to sell
  p buy_sell # Prints array containing buy and sell days

end
# END METHOD


stock_picker(stock_array) # Method call passing stock_array




