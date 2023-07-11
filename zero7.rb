a = [1, 2, 3]
puts a.sum
# コメント
a = [1, 2, 3]
sum = 0
a.each do |x|
  sum += x
end
puts sum

def area
  2 * 2
end

result = area
puts result

def area(x)
  x * x
end

puts area(2)
puts area(3)

def area2(x, y)
  x * y 
end 

puts area2(2, 3)

def thanks_and_receipt(receipt)
  puts "ありがとうございました"
  unless receipt
    return
  end
  puts "こちら、レシートになります"
end 

thanks_and_receipt(false)
thanks_and_receipt false

puts "=========="
def thanks_and_receipt(receipt)
  greeting = "ありがとうございました。"
  unless receipt
    return greeting
  end
  greeting + "こちら、レシートになります"
end 

puts thanks_and_receipt(false)
puts thanks_and_receipt(true)

puts "=========="
puts("こちら、レシートになります")
puts "=========="

puts thanks_and_receipt false
puts "=========="

def calc(num1, num2)
  return "計算できません" if num1.zero? || num2.zero?
  num1 * num2
end 

puts calc 4, 5
puts calc 4, 0
puts calc 0, 3