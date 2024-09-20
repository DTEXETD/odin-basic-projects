def bubble_sort(array)
  counter = 0
  while counter < array.length - 1
    i = 0
    while i < array.length
      value = array[i]
      nextvalue = array[i + 1]
      array[i + 1], array[i] = array[i], array[i + 1] if !nextvalue.nil? && value > (nextvalue)
      i += 1
    end
    counter += 1
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
