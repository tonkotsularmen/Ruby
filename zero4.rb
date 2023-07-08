p ["醤油", "塩", "みそ", "とんこつ"]
p ["醤油", 400, 1.08]
p [300]
p []
drinks = ["water", "cola", "tea"]
p drinks
puts "---------"
drinks = ["water", "cola", "tea"]
p drinks[0]
p drinks[1]
puts "---------"
drinks = ["水", "コーラ", "紅茶"]
p drinks[-1]
p drinks[-2]
puts "---------"
drinks = ["水", "コーラ", "紅茶", "緑茶", "コーヒー", "プロテイン"]
p drinks.first
p drinks.last
puts "---------"
drinks = ["水", "コーラ", "紅茶", "緑茶", "コーヒー", "プロテイン"]
p drinks.first(3)
puts "---------"
drinks = ["water", "cola", "tea"]
drink =  drinks[3]
#binding.irb
p drink
puts "---------"
drinks = ["water", "cola", "tea"]
p drinks.first
p ["water", "cola", "tea"].first
puts "---------"
drinks = ["water", "cola"]
drinks.push("tea")
p drinks
p "---------"
drinks.unshift("coffee")
p drinks
puts "---------"
drinks = ["water", "cola"]
drinks << "milk"
p drinks
puts "---------"
drinks = ["water", "cola", "tea"]
drinks.pop
p drinks
puts "---------"
drinks = ["water", "cola", "tea"]
drinks.shift
p drinks
puts "---------"
drinks = ["water", "cola", "tea"]
p drinks.pop
drinks << "milk"
p drinks.shift
p drinks
puts "---------"
a1 = [1, 2, 3]
a2 = [7, 8, 9]
p a1 + a2
p a2 + a1
b1 = [1, 2, 3, 4, 5, 6, 7]
b2 = [2, 4, 6]
p b1 - b2
puts "--------"
menus = ["醤油ラーメン", "チャーハン", "餃子", "焼売"]
ordered = ["醤油ラーメン", "餃子"]
p not_ordered = menus - ordered
puts "--------"
menus = ["醤油ラーメン", "チャーハン", "餃子", "焼売"]
menus.each do |menu|
  puts menu
end
puts "--------"
puts menus
puts "--------"
menus = ["醤油ラーメン", "チャーハン", "餃子", "焼売"]
menus.each do |menu|
  p menu
end
puts "--------"
p menus
puts "--------"
[1, 2, 3, 4, 5, 6, 7, 8, 9, 0].each do |x|
  break if x == 5
  puts x
end
puts "--------"
[1, 2, 3, 4, 5, 6, 7, 8, 9, 0].each do |x|
  puts x
  break if x == 5
end
puts "--------"
[1, 2, 3, 4, 5, 6, 7, 8, 9, 0].each do |x|
  next if x == 5
  puts x
end
puts "--------"
[1, 2, 3, 4, 5, 6, 7, 8, 9, 0].each do |x|
  puts x
  next if x == 5
end
puts "---------"
(1..10).each do |num|
  puts num
end

puts (1..10).class

=begin
for 変数 in 範囲(ハッシュ、配列) do
　処理
end
=> 指定したオブジェクトから順に値を取り出しながら繰り返し処理を行う
=end

for num in (1..7) do
  puts num * 23
end

asd = [5, 6, 7]
for num in asd do
  puts num * 23
end

# !練習問題!
puts "問4-1"
p ["コーヒー", "カフェラテ"]
puts "問4-2"
drinks = ["コーヒー", "カフェラテ", "モカ"]
p drinks[1]
drinks = ["コーヒー", "カフェラテ", "モカ"]
p drinks.first
p drinks.last
puts "問4-3"
#drinks = ["コーヒー", "カフェラテ"]
#p drinks.push("モカ")
p ["コーヒー", "カフェラテ"].push("モカ")
p [2, 3].unshift(1)
p [1, 2] + [3, 4]
puts "問4-4"
["ティーラテ", "カフェラテ", "抹茶ラテ"].each do |drink|
  puts drink
end
["ティーラテ", "カフェラテ", "抹茶ラテ"].each do |drink|
  p "#{drink}お願いします"
end
sum = 0
[1, 2, 3].each do |num|
  sum = sum + num
end
p sum
a = [4, 5, 6]
puts a.sum
drinks = ["ティーラテ", "カフェラテ", "抹茶ラテ"]
p drinks - drinks

drinks = []
drinks.each do |drink|
  puts drink
end