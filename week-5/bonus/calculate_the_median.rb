#PSEUDOCODE
# CREATE a method which takes 1 array argument
# IF array includes numbers
#   SORT elements
#   while 2 or more elements remain, eliminate the
#     first and last.
#     if 2 remain, add them together and divide by 2
#     else return the final number.



#INITIAL SOLUTION

def median(array)

  if array[0].is_a?(Numeric)
    array = array.sort
    while array.length > 2
      array.pop()
      array.shift()
    end
    if array.length == 2
      (array[0]+array[1])/2.0
    else
      return array[0]
    end
  end

  if array[0].is_a?(String)
    sorted = array.map{|string|string.downcase}.sort
    while sorted.length > 2
      sorted.pop()
      sorted.shift()
    end
    if sorted.length == 2
      median = []
      array.each do |x|
        if (x.downcase == sorted.first)
          median.unshift(x)
        elsif (x.downcase == sorted.last)
          median << x
        end
      end
      return median
    else
    array.find{|i| i.downcase == sorted[0]}
    end
  end
end

array1 = ["ant","dog","Cat","bAt"]


p median(array1)

#REFACTOR