class Array

    def limited?(amin,amax)
      self.each do |i|
        if amin > i || amax < i #check if element is less than amin or more than amax
          return false
        end
      end
      return true
    end

    def sorted?
        asc = 0
        des = 0
        if self.length == 1 || self.length == 0 #check to see if array length is 1 or 0
            return 1
        end

        for i in 1...self.length
            if self[i-1] > self[i] #if this checks array might have descending sorting
                des = 1
            end
            if self[i-1] < self[i] #if this checks array might have ascending sorting
                asc = 1
            end
        end

        if asc == des #if treu then array is not sorted
            return 0
            
        elsif des == 1
            return -1 #only returned if des is true
        end

        return 1 #defaults to sorted as ascending
    end        

end

#Testing of limited?(amin,amax)
arr = [0, 5, 8, 9, 6, 2, 1, 4, 3, 7]
puts "Array: #{arr.map { |number| number}}"
puts "Are the array elements between 0 and 9? #{arr.limited?(0, 9)}"
puts "Are the array elements between 1 and 9? #{arr.limited?(1, 9)}"
puts "Are the array elements between 0 and 8? #{arr.limited?(0, 8)}"
puts "Are the array elements between -1 and 10? #{arr.limited?(-1, 10)}"

puts

#Testing of sorted?
arr1 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
arr2 = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
arr3 = [0, 5, 8, 9, 6, 2, 1, 4, 3, 7]

puts "Are the arrays sorted? (0 = unsorted, 1 = sorted ascending, -1 = sorted descending)"
puts "Array: #{arr1.map { |number| number}} Array Sorted number: #{arr1.sorted?}"
puts "Array: #{arr2.map { |number| number}} Array Sorted number: #{arr2.sorted?}"
puts "Array: #{arr3.map { |number| number}} Array Sorted number: #{arr3.sorted?}"

