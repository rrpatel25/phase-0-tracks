# Release 0: Solving Problems with Data Structures

arr = [42, 89, 23, 1]

def search_array (array, integer)
  # set counter to 0
  i = 0
  while i < array.length #while the counter remains < number of items within the array, do the following
    if array[i] == integer # evaluate if current position == integer input
      p i # if so, return the counter (index number) and break
      break
    else
      i += 1 # otherwise, add one to the counter
    end
  end
end


# Release 1: Calculate Fibonacci Numbers

def fib(length)
# The original array
  array = [0, 1]
# i-counter will always be one ahead of the length(input) parameter
  i = 1 
# Taking care of the edge cases
  if length == 0
    array = []
  elsif length == 1
    array = [0]
  elsif length == 2
    array
  else 
# Take array[i] + array[i-1] then add to the original array
    while i < length - 1
      array.push(array[i] + array[i-1])
      i += 1
    end
    array
  end
end

p fib(100)[99] == 218922995834555169026 
# return => true