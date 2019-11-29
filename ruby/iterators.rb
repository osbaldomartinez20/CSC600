array = [0,1,2,3,4,5,6,7,8,9]

#ruby loop
index = 0
puts "Loop:"
loop do
  if index == array.length
    break
  end
  puts "Loop: Array Element #{index}: #{array[index]}"
  index += 1
end

puts

#ruby while loop
index = 0
puts "While loop:"
while index < array.length
  puts "While loop: Array Element #{index}: #{array[index]}"
  index += 1
end

puts

#ruby until loop
puts "Until loop:"
index = array.length-1
until index < 0
  puts "Until loop: Array Element #{index}: #{array[index]}"
  index -= 1
end

puts 

#ruby for loop
puts "For loop:"
for index in 0...array.length
  puts "For loop: Array Element #{index}: #{array[index]}"
end
 
puts

#ruby upto loop
puts "Upto loop:"
0.upto(array.length-1) do |index|
  puts "Upto loop: Array Element #{index}: #{array[index]}"
end

puts

#ruby downto loop
puts "Downto loop:"
(array.length-1).downto(0) do |index|
  puts "Downto loop: Array Element #{index}: #{array[index]}"
end

puts

#ruby times loop
puts "Times loop:"
10.times do |index|
  puts "Times loop: Array Element #{index}: #{array[index]}"
 end
 
puts

#ruby each loop
puts "Each loop:"
index = 0
array.each do |j|
  puts "Each loop: Array Element #{index}: #{j}"
  index += 1
end

puts

#ruby map
puts "Map array(2*element for each element):"
puts "Elements multiplied by 2: #{array.map {|number| number*2}}"

puts

#ruby step
puts "Step Method(only prints the elements in even indices):"
(0...array.length).step(2) do |index|
  puts "Step through array: Array Element #{index}: #{array[index]}"
end

puts

#ruby collect
puts "Collect array(element*element for each element):"
puts "Squared elements: #{array.collect {|number| number*number}}"

puts

#ruby select
puts "Select in array all odd numbers:"
puts "Odd numbers: #{array.select { |number| number%2 == 1}}"

puts

#ruby reject
puts "Reject in array all multiples of 3:"
puts "Non-multiples of 3: #{array.reject { |number| number%3 == 0}}"






