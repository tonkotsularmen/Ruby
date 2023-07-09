puts ["water", "cola", "tea"].size
puts [1, 2, 3].sum
puts [1, 2, 3].inject(:+)
puts "平均算出"
a = [1, 2, 3]
puts a.sum / a.size
puts "平均点算出"
a = {算数: 60, 国語: 70, 社会: 90}
puts a
puts a.values.sum / a.size
puts "平均を小数まで算出"
a = [1, 1, 3]
puts a.sum.to_f / a.size
puts "============="
a1 = [1, 1, 2]
a2 = a1.uniq
p a1
p a2
puts "============="
a1 = [1, 1, 2]
a2 = a1.uniq!
p a1
p a2
puts "============="
a1 = [1, 1, 2]
a2 = a1.uniq
p a1.object_id
p a2.object_id
puts "============="
a1 = [1, 1, 2]
a2 = a1.uniq!
p a1.object_id
p a2.object_id


p [1, 3, 2, "2", "3"].uniq
p [1, 3, 2, "2", "3"].uniq { |n| n.to_s}
p [1, 3, 2, "2", "3"].each { |n| n.to_s}
p [1, 3, 2, "2", "3"].map { |n| n.to_s}
["A", "B", "C", "c"].uniq {|n| n.downcase}
p [1, 3, 2, "2", "3"].each 
p [4, 7, 1].sample
p [4, 7, 1].shuffle
p [4, 7, 1].sort
p ["hitomi", "achi", "tama"].sort
p ["aya", "achi", "tama"].sort
p ["aya", "achi", "Tama"].sort
p [4, 7, 1].sort.reverse
p "abcdef".reverse
p "ラーメンチャーハン餃子セット".reverse
order = ""
["カフェラテ", "チーズケーキ"].each do |item|
  order = order + item + "と"
end 

puts order
puts ["カフェラテ"].join("と")
puts ["カフェラテ", "チーズケーキ"].join("と")
puts ["カフェラテ", "チーズケーキ", "バニラアイス"].join("と")

p "カフェラテ チーズケーキ バニラアイス".split
p "カフェラテとチーズケーキとバニラアイス".split("と")

result = [1, 2, 3].map do |x|
  x * 2
end 
p result

result = [100, 200, 300].map do |x|
  "#{x}円"
end 
p result

result = ["abc", "123"].map do |text|
  text.reverse
end 
p result

result = ["abc", "123"].map{ |text| text.reverse}
p result

result = ["abc", "123"].map(&:reverse)
p result

# !練習問題!
puts "5-1"
p ["コーヒー", "カフェラテ"].size
p [1, 2, 3, 4, 5].sum
puts "5-2"
p ["モカ", "カフェラテ", "モカ"].uniq
p ["モカ", "カフェラテ", "モカ"].clear
puts "5-3"
p ["カフェラテ", "モカ", "カプチーノ"].sample
puts ["大吉", "中吉", "末吉", "凶"].sample
puts "5-4"
p [100, 50, 300].sort
p [100, 50, 300].sort.reverse
puts "cba".reverse
puts "5-5"
p ["100", "50", "300"].join(",")
p "100,50,300".split(",")
p [1, 2, 3].map { |num| num * 2}
p ["abc", "xyz"].map(&:reverse)

names = ["aya", "achi", "Tama"].map do |name|
  name.downcase
end
p names.sort
p ["aya", "achi", "Tama"].map{|name| name.downcase}.sort