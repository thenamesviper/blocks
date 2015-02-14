def bubble_sort array
	sorted = false
	until sorted do
		sorted = check_if_sorted(array)
		for i in 0..(array.length-2)
			if array[i] > array[i+1] 
				first_item = array[i]
				second_item = array[i+1]
				array[i] = second_item
				array[i+1] = first_item
			end
		end
	end
	array
end		

def check_if_sorted array
	array.each_index do |ind|
		if ind < (array.length-1)
			if array[ind] > array[ind+1]
				return false
			end
		end	
	end
	true
end
	
print bubble_sort([65,34,66,4234,3434534])
