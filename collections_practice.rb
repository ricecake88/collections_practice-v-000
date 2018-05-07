def sort_array_asc(integers)
   integers.sort
end

def sort_array_desc(integers)
  integers.sort do |a,b|
    if a == b
      0
    elsif a > b
      -1
    else a < b
      1
    end
  end  
end

def sort_array_char_count(strings)
  ordered_strings = strings.sort
  ordered_strings.sort do |a,b|
    if a.length == b.length
      0
    elsif a.length < b.length
      -1
    else a.length > b.length
      1
    end
  end
end

def swap_elements(array)
  temp = array[1]
  array[1] = array[2]
  array[2] = temp
  array
end

def swap_elements_from_to(array, index, target_index)
  temp = array[index]
  array[index] = array[target_index]
  array[target_index] = temp
  array
end

def reverse_array(array)
  #array.reverse
   reverseArray = []
   count = array.length-1
   count.step(0,-1).each do|index|
     reverseArray << array[index]
    end
    reverseArray
end

def kesha_maker(strArray)
  newArray = []
  strArray.each do |str|
    str[2] = "$"
    newArray << str
  end
  newArray
end

def find_a(strArray)
  newArray = []
  strArray.select do |str|
    if str.start_with?("a")
      newArray << str
    end
  end
  newArray
end

def sum_array(intArray)
   intArray.inject(0) do |result, num|
     result + num
    end
end

def add_s(strArray)
  strArray.each_with_index.collect do |element, index| 
    index == 1? element : element + "s"
  end
end
