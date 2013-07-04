# 1
puts 'Lesson 1'
numlist = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numlist.each do |numbers|
  puts numbers
end
# 2 values >5
puts 
puts 'Lesson 2'
numlist = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numlist.each do |numbers|
  if numbers < 5
  else puts numbers
  end
end
#3 use select to pick odd numbers
puts
puts 'Lesson 3'
numlist = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
odd = numlist.select {|numbers| numbers % 2 == 1}
puts odd
#4 
puts
puts 'Lesson 4'
numlist = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numlist.push (11)
numlist.unshift (0)
puts numlist
#5
puts
puts 'Lesson 5'
numlist.pop
numlist.push (3)
puts numlist
#6
puts
puts 'Lesson 6'
newlist = numlist.uniq
puts newlist
#7 arrays store items by numbers, hashes link items in pairs
#8 creating hashes
puts
puts 'Lesson 8'
oldhash = {"a" => 1, "b" => 2, "c" => 3}
newhash = {a:1, b:2, c:3}

puts oldhash
puts
puts newhash
#9
puts
puts 'Lesson 9'
h = {a:1, b:2, c:3, d:4}
puts h[:b]
#10
puts
puts 'Lesson 10'
h[:e] = 5
puts h
#no 11 or 12
#13
puts
puts 'Lesson 13'
puts h.reject {|k,v| v <= 3.5}
puts 'Hash values now:'
puts h
puts 'delete items <3.5'
puts h.delete_if {|k,v| v <= 3.5}
puts 'New hash values:'
puts h
#14
puts
puts 'Lesson 14'
dayanddate = [{day: "Monday", date:"July 1"} , {day: "Tuesday", date:"July 2"} , {day:"Wednesday", date:"July 3"} , {day: "Thursday", date:"July 4"}]
puts dayanddate[1]
#15
puts
