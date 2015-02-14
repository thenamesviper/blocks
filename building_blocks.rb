module Enumerable
	def my_each
		for x in self
			yield(x)
		end
	end
	def my_each_with_index
		for index in 0..self.length-1
			yield self[index], index
		end
	end
	def my_select
		new_array = []
		self.my_each do |x|
			new_array.push(x) if yield(x)
		end
		new_array
	end		
	def my_all?
		self.my_each do |x|
			if yield(x) == false
				return false
			end
		end
		return true
	end
	def my_any?	
		self.my_each do |x|
			if yield(x) == true
				return true
			end
		end
		return false
		
	end
	def my_none?
		self.my_each do |x|
			if yield(x) == true
				return false
			end
		end
		return true
	end
	def my_count
		self.length
	end
	def my_map
		new_array = []
		self.my_each do |x|
			new_array.push(yield(x))
		end
		new_array
	end
	def my_inject(value)
		for x in self 
			value = yield value, x
		end
		value
	end
end

first = [4,3,5,6].my_each do |x|
	x
end
puts first

["hello", "goodbye", "hi"].my_each_with_index do |x,y|
	puts "Item #{y+1}: #{x}"
end

large_numbers = [45,56,23,67].my_select do |x|
	x>50
end
print large_numbers
puts ""

answer = [88,146,314].my_all? do |x|
	x>50
end
puts answer

answer = [23,6,22].my_any? do |x|
	x>50
end
puts answer

answer = [23,10,6].my_none? do |x|
	x>50
end
puts answer

count = [2,5,7].my_count
puts count

new_array = [3,4,6].my_map do |x|
	x*10
end
print new_array
puts ""

total_product = [5,2,6].my_inject(2) do |product, x|
	product * x
end
puts total_product
