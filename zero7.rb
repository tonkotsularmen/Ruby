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

def order(item)
  "#{item}"
end 

puts order("カフェラテ")
puts order("モカ")

puts "----------"
def order(item = "ラーメン")
  "#{item}をください"
end 
puts order
puts order("チャーハン")
puts order("ぎょうざ")

puts "----------"
def order(item, size)
  "#{item}を#{size}でください"
end 

puts order("チャーハン", "ベンティ")
puts order( "ベンティ", "ぎょうざ")

puts "----------"
def order(item:, size:)
  "#{item}を#{size}でください"
end 

puts order(item: "チャーハン", size: "ベンティ")
puts order(size: "ベンティ", item: "ぎょうざ")

puts "----------"
def order(item:, size: "ショート")
  "#{item}を#{size}でください"
end 

puts order(item: "チャーハン")
puts order(size: "ベンティ", item: "ぎょうざ")
puts "=========="

#メソッド内で定義した変数はメソッド外から呼び出せない
#def hello
 # text = "こんにちは"
  #p text
#end

#hello

#じゃあメソッドがいで定義したメソッドは？
#使えない
#text = "こんにちは"
#def hello
 #p text
#end

#hello

# !練習問題!
puts "7-1"
def order(item)
   "#{item}をください"
end 

puts order("カフェラテ")

puts "7-2"
def area
   3 * 3
end 
puts area

def dice
  [1, 2, 3, 4, 5, 6].sample
end 

puts dice

def dice2
  dice = Random.rand(1..6)
  dice
end 

puts dice2

puts "==7-3=="
def order(item)
  puts "#{item}をください"
end 

order("カフェラテ")
order("モカ")

def dice
  x = [1, 2, 3, 4, 5, 6].sample
  unless x == 1
    puts x
  else
    puts "もう一回"
    y = [1, 2, 3, 4, 5, 6].sample
    puts y
  end 
end

dice

puts "=========="
# サイコロの目が1であるかぎりサイコロを振り続ける
# カリキュラムではdoを書いてるけどいらないらしい
#def dice3
#  dice = 1
#    while dice == 1
#      dice =  [1, 1, 1, 1, 1, 6].sample
#      puts dice
#    end 
#end

#dice3


puts "7-4"
#def price(item:)
#  if item = "コーヒー"
#    return 300
#  elsif item = "カフェラテ"
#    return 400
#  else 
#    return "そちらの商品は扱っておりません"
#  end 
#end 

def price(item:)
  items = { "コーヒー" => 300, "カフェラテ" => 400 }
  items[item]
end 

=begin
def price(item:)
  case item
  when "コーヒー"
    300
  when "カフェラテ"
    400
  end
end 
=end
puts price(item: "カフェラテ")
puts price(item: "コーヒー")

=begin
def price(item:, size: "ショート")
  case item
  when "コーヒー"
    p = 300
  when "カフェラテ"
    p = 400
  end
  
  case size
  when "ショート"
    p + 0
  when "トール"
    p + 50
  when "ベンティ"
    p + 100
  end
end 
=end

def price(item:, size: "ショート")
  items = { "コーヒー" => 300, "カフェラテ" => 400 }
  sizes = { "ショート" => 0, "トール" => 50, "ベンティ" => 100 }
  items[item] + sizes[size]
end 
puts price(item: "カフェラテ", size: "トール")
puts price(item: "コーヒー", size: "ベンティ")
puts price(item: "コーヒー")

puts "7-5"
def order(drink)
  puts "#{drink}をください"
end 

drink = "コーヒー"
order(drink)


gmorning = "おはよう"
def hello
  text = "こんにちは"
  p text
end 
hello
p gmorning