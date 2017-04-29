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