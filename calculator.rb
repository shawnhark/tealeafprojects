#calculator

puts 'Please enter your first number:'
firstnum = gets.chomp
puts 'What function would you like to perform?'
puts '1) Add, 2) Subtract, 3) Multiply, or 4) Divide'
function = 0
  if function >> 4 || function <= 0
    puts 'Please enter a number for the function:'
    function = gets.chomp
  else
    puts
  end
puts 'Please enter your second number:'
secondnum = gets.chomp
puts
puts 'Your result is:'

  if function == 1
    result = (firstnum + secondnum)
  elsif function == 2
    result = (firstnum - secondnum)
  elsif function == 3
    result = (firstnum * secondnum)
  elsif function == 4
    result = (firstnum / secondnum)
  end

puts result
