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