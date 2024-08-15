def stock_picker(array)
  temp = 0
  result = Array.new()
  array.map.with_index do |value, index|
    array.map.with_index do |secvalue, secindex|
      if secindex > index
        profit = secvalue - value
        if profit > temp 
          result.clear()
          result = [index, secindex]
          temp = profit
        end
      end
    end
  end
  p result
end
stock_picker([17,3,6,9,15,8,6,1,10])