def stock_picker(array)
  previous = 0
  reset = 0
  arr_big = []
  arr_small = []
  last_item = array[array.length - 1]
  prev_to_last_item = array[array.length - 2]

  array.each_with_index do |number, index|
    next unless index > 0

    previous = array[index - 1]
    if number > previous && reset == 0
      reset += 1
      arr_small.push(previous)

    end
    if number < previous && reset == 1
      arr_big.push(previous)
      reset = 0
    end
  end
  # EdgeCase for reading the last number
  arr_big.push(last_item) if last_item > prev_to_last_item

  puts arr_small
  puts arr_big
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
