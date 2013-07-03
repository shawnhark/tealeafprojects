#calculator
puts 'Please enter your first number:'
firstnum = gets.chomp
puts 'What function would you like to perform?'
puts '1) Add, 2) Subtract, 3) Multiply, or 4) Divide'
function = gets.chomp
  if function.to_i >> 4 || function.to_i <= 0
    puts 'Please enter a number for the function:'
  else
    puts
  end
puts 'Please enter your second number:'
secondnum = gets.chomp
  if function == "1"
    result = firstnum.to_i + secondnum.to_i
  elsif function == "2"
    result = firstnum.to_i - secondnum.to_i
  elsif function == "3"
    result = firstnum.to_i * secondnum.to_i
  elsif function == "4"
    result = firstnum.to_i / secondnum.to_i
  end
puts 'Your result is:'
puts result
