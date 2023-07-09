#コーヒーが300円、カフェラテが400円
#{:coffee => 300, :caffe_latte => 400}
p( {:coffee => 300, :caffe_latte => 400} )
p "coffee".to_sym
p :coffee.to_s
p( {coffee: 300, caffe_latte: 400} )
menu = {cola: 300, water: 400}
p menu
p menu[:cola]
creature = {human: ["man", "woman"], animal: {neko: "chatora", dog: "corgi"}}
p creature[:human]#"man"のみ取り出した対けど取り出せない
menu = {cola: 300, water: 400}
menu[:tea] = 200
p menu
menu[:cola] = 350
p menu
p menu[:green_tea]
menu = {cola: 300, water: 400}
menu.default = "存在しません"
p menu[:green_tea]
drinks = {cola: 300, water: 400}
foods = {onigiri: 400, potato: 350}
menus = drinks.merge(foods)
p menus
menus.delete(:onigiri)
p menus
menus.each do |menu, price|
  puts "#{menu}は#{price}円です"
end

menus.each_key do |menu|
  puts menu
end
#!練習問題!
puts "6-1"
menu = {coffee: 300, caffe_latte: 400}
puts menu[:caffe_latte]

menu = {"モカ"=> "チョコレートシロップとミルク入り", "カフェラテ" => "ミルク入り"}
puts menu["モカ"]

puts "6-2"
menu = {coffee: 300, caffe_latte: 400}
menu[:tea] = 300
p menu

menu.delete(:coffee)
p menu
#menu[:tea]が存在しないとき
menu = {coffee: 300, caffe_latte: 400}
menu.default = "紅茶はありませんか？"
p menu[:tea]
  #解答
  menu = {coffee: 300, caffe_latte: 400}
  puts "紅茶はありませんか？" unless menu[:tea]
  #別解1
  menu = {coffee: 300, caffe_latte: 400}
  puts "紅茶はありませんか？" if menu[:tea].nil?
  #別解2 has_key?メソッド
  menu = {coffee: 300, caffe_latte: 400}
  puts "紅茶はありませんか？" unless menu.has_key?(:tea)

menu = {coffee: 300, caffe_latte: 400}
v = menu[:caffe_latte]
puts "カフェラテください" if v <= 500

#模範解答
menu = {coffee: 300, caffe_latte: 400}
v = menu[:caffe_latte]
puts "カフェラテください" if menu.has_key?(:caffe_latte) && v <= 500

#caffelatteを分解して使用されている文字とその回数をハッシュに入れて保存する
array = "caffelatte".chars
moji = {}
  #解答
  hash = {} #初期値設定
  hash.default = 0 #hashにキーが存在しない時に0が取得される
  array = "caffelatte".chars
  array.each do |x|
    #hash[x] += 1
    hash[x] = hash[x] + 1
  end 
  p hash
  
  
puts "6-3"
menus = {"コーヒー" => 300, "カフェラテ" => 400 }
menus.each do |menu, price|
  puts "#{menu}-#{price}"
end 

menus = {"コーヒー" => 300, "カフェラテ" => 400 }
menus.each do |menu, price|
    puts "#{menu}-#{price}" if price >= 350
end 

menus = {}
menus.each do |menu, price|
  puts "#{menu}-#{price}"
end 
# 全てのキーを配列に入れる
menus = {"コーヒー" => 300, "カフェラテ" => 400 }
array2 = []
menus.each_key do |menu|
  array2 = array2.push(menu)
end 
p array2
 #模範解答
  menu = {"コーヒー" => 300, "カフェラテ" => 400 }
  keys = []
  menu.each do |key, value|
   keys.push(key)
  end
  p keys
  #別解
  menu = {"コーヒー" => 300, "カフェラテ" => 400 }
   p menu.keys
    #全てのキーを配列で取得するkeysメソッド
    