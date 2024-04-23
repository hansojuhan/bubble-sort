# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def bubble_sort(numbers)
  # Initialise result
  # binding.pry
 
  puts "Original numbers:\t #{numbers}"

  unsorted = true
  while unsorted do

    i = 0
    unsorted = false
    while i < (numbers.length - 1)
      if numbers[i] > numbers[i + 1]
        numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]  
        unsorted = true
      end
      i += 1
    end
    
  end

  puts "Sorted numbers:\t\t #{numbers}"

  numbers
end

# bubble_sort([4,3,78,2,0,2])