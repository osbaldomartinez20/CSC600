#ruby loop
i = 0
puts "Loop"
loop do
  if i >= 10
    break
  end
  puts "Loop iteration number: #{i}"
  i += 1
end

puts

#ruby while loop
i = 0
puts "While loop"
while i < 10
  puts "While loop iteration number: #{i}"
  i += 1
end

puts

#ruby until loop
puts "Until loop"
i = 0
until i >= 10
  puts "Until loop iteration number: #{i}"
  i += 1
end