class MyArray
def my_array(list, new_array = nil)

 if list.size <= 0
 	return new_array 
 end

 if new_array == nil
   new_array = []
 end

 min = list.min
 new_array << min
 list.delete(min)

 my_array(list, new_array)

end
end

# puts MyArray.new.my_array([-3, 1, 2, 20, 11, 14, 3, 6, 8, 5])
