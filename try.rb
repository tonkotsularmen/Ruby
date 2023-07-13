drinks = ["水", "コーラ", "紅茶", "緑茶", "コーヒー", "プロテイン"]
puts drinks
puts "----------"
p drinks
puts "----------"
#print 123456
# 二次元配列やってみたい
#a = ["ラーメン"["醤油", "塩", "みそ", "とんこつ"], "チャーハン", "餃子"]
#puts a[0][0]

#puts "体重をkgで入力してください(例:80)"
#weight = gets
#puts "身長をmで入力してください(例：1.77)"
#height = gets

#def bmi(weight, height)
#  weight.to_f / (height.to_f * height.to_f)
#end

#puts "あなたのBMIは#{bmi(weight, height)}です"

dice = 0
while dice != 6
  dice = rand(1..6)
  puts dice
end 
