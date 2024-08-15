def bubble_sort(array)
  counter = 0
  while counter < array.length - 1
    i = 0
    while i < array.length
      value = array[i]
      nextvalue = array[i + 1]
      unless nextvalue.nil?
        if value > nextvalue
          array[i + 1], array[i] = array[i], array[i + 1]
        else
        end
      end
      i += 1
    end
    counter += 1
  end
  array
end

puts bubble_sort([4,3,78,79,0,2])