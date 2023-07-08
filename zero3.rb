puts 1 < 2
puts 1 > 2
puts 1 <= 2
puts 1 >= 2
wallet = 500
puts wallet >= 300
wallet = 100
puts wallet >= 300
puts 1 == 2
puts 2 == 2
puts 2 == 1 + 1
puts 1 != 2
puts 2 != 2
puts "ruby" == "ruby"
puts "ruby" != "ruby"
puts "ruby" == "python"
puts 2.even?
puts 3.even?
puts 2.odd?
puts 3.odd?

wallet = 500
if wallet >= 300
  puts "コンビニでアイスを買っていこう"
end

 puts "コンビニでアイスを買っていこう" if wallet >= 300

 wallet = 100
if wallet >= 300
  puts "コンビニでアイスを買っていこう"
end

x = 200
if x != 100
  puts "100ではありません。"
end

x = 200
unless x == 100
  puts "100ではありません。"
end

x = false
unless x
  puts "unless: xはfalseです"
end
if !x
  puts "if:　xはfalseです"
end

wallet = 100
if wallet >= 300
  puts "アイスを買う"
else
  puts "川を散歩する"
end

wallet = 500
if wallet >= 300
  puts "アイスを買う"
else
  puts "川を散歩する"
end

season = "夏"
if season == "春"
  puts "桜を見にいこう"
elsif season == "夏"
  puts "花火を見にいこう"
else
  puts "紅葉を見にいこう"
end

if season == "春"
  puts "桜を見にいこう"
else
  if season == "夏"
    puts "花火を見にいこう"
  else
    puts "紅葉を見にいこう"
  end
end

wallet = 100
suica = 300
waon = 200
if wallet >= 300 || suica >= 300 || waon >= 300
  puts "アイスを買う"
end

wallet = 500
weather = "晴れ"
status = "空腹"
if wallet >= 300 && weather == "晴れ" && status == "空腹"
  puts "アイスを買いに外に出る"
end

=begin
endifの条件を満たすルールは、
「条件がfalseまたはnilは条件を満たさず、それ以外は条件を満たす」です。
=end
if 100#falseでもなくnilでもない
  puts "100は成立しました"
end

if "abc"#falseでもなくnilでもない
  puts "abcで成立しました"
end

if false
  puts "falseが成立しました"
end

if nil
  puts "nilが成立しました"
end

order = "モカ"
case order
when "サーモン"
  puts "300円です"
when "マグロ"
  puts "400円です"
when "はまち"
  puts "250円です"
else
  puts "取り扱っていません"
end

wallet = 300
case
when wallet >= 500
  puts "牛丼にしよう"
when wallet >= 700
  puts "カレーにしよう"
when wallet >= 900
  puts "ステーキにしよう"
else
  puts "おにぎりだな"
end

3.times do
  puts "ゴリラ"
end

3.times do
  puts "醤油ラーメン"
  puts "にします"
end
puts "やっぱとんこつラーメンで！"

3.times {
  puts "塩ラーメン"
  puts "にします"
}
puts "やっぱ味噌ラーメンで！"

3.times do puts "モカ" end 
3.times { puts "チャーハン" }

#慣習的にはdo~endは複数行、{}は一行
3.times do
  puts "醤油ラーメン"
  puts "にします"
end

3.times { puts "チャーハン" }

biscuit = 0
while biscuit < 2
  biscuit = biscuit + 1
  puts "ポケットを叩くとビスケットが#{biscuit}つ"
end

biscuit = 0
while biscuit < 2
  biscuit += 1
  puts "ポケットを叩くとビスケットが#{biscuit}つ"
end

dice = 0#変数diceに初期値の設定
while dice != 6 do#diceが６でない限り、do~endの処理を繰り返せ
  dice = rand(1..6)#1~6までの数字をランダムにdiceに代入する
  puts dice#diceを出力する
end #終わり

# !確認問題!
a = 2
puts "aは365よりも小さいです" if a < 365

a = 2
puts "aは1+1と等しいです" if a == 1 + 1

season = "春"
puts "あんまん食べたい" if season != "夏"

season = "夏"
if season == "夏"
  puts "かき氷食べたい"
  puts "麦茶飲みたい"
end 

wallet = 100
if wallet >= 120
  puts "ジュースを買おう"
else 
  puts "お金じゃ買えない幸せがたくさんあるんだ。でも僕はジュースも買えない"
end 

x = 200
if x <= 100 || x >= 200
  puts "範囲外です"
end 

x = 0
y = -1
z = 1
if x > 0 || y > 0 || z > 0
  puts "正の整数です"
end 

season = "春"
case season
when "春"
  puts "アイスを買っていこう"
when "夏"
  puts "かき氷を買っていこう"
when "秋"
  puts "焼き芋にしよう"
else 
  puts "あんまんにしよう"
end 

2.times do
  puts "カフェラテ"
  2.times do
    puts "モカ"
  end
end
puts "フラペチーノ"