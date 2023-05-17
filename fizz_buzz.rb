def fizz_buzz(input)
  if input % 3 == 0
    puts "Fizz"
  elsif input % 5 == 0
    puts "Buzz"
  elsif input % 3 == 0 && input % 5 == 0
    puts "Fizz_Buzz"
  else 
    puts "#{input}"
  end
end 

puts "数字を入力してください"

input = gets.to_i 

puts "結果は"
fizz_buzz(input)