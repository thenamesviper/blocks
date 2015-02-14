require_relative "bubble"
	describe "check_if_sorted" do
		it "can see if a list is sorted" do
			check_if_sorted([3,4,5,10,24]).should == true
		end
		it "can see if a list is NOT sorted" do
			check_if_sorted([15,5,6,9,3]).should == false
		end
	end
	describe "bubble_sort" do
		it "can return the array if it's already sorted" do
			bubble_sort([1,4,5]).should == [1,4,5]
		end
		it "can sort" do
			bubble_sort([5,2,3,4]).should == [2,3,4,5]
		end
		it "works when numbers are equal" do
			bubble_sort([5,3,3,2,5]).should == [2,3,3,5,5]
		end
	end