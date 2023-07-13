puts "======="
p 1.class
p 2.class
p 100.class
puts "======="
p "ラーメン".class
p "hello".class
p "".class
puts "======="
p [1, 2, 3].class
p ["コーヒー", "ラーメン", "パフェ"].class
p [].class
puts "======="
p 1.even?
p 2.even?
p 100.even?
#p "ラーメン".even?
  #=>(undefined method `even?' for "ラーメン":String (NoMethodErro)
p "カフェラテ"
p [1, 2, 3]
p String.new
p String.new("カフェラテ")
p Array.new
p Array.new(2, "カフェラテ")
#p Array.new("カフェラテ", 2)
  #=>no implicit conversion of String into Integer (TypeError)
# p Array.new.push("ラーメン", 2, "チャーハン")
puts "===クラスを作る===="
class Drink
end
drink = Drink.new
p drink.class
# p drink
  #=>#<Drink:0x00007f9eeefb5600>
# puts drink
  #=>#<Drink:0x00007f6af9d3d8b0>
# p drink
  #=>#<Drink:0x00007f7c1c705900>
p Drink.new.class

puts "======="
p Drink.class
p Array.class
p Integer.class
p String.class
=begin
puts "======="
class Drink
  def name
    "カフェラテ"
  end
end

drink = Drink.new
puts drink.name
#p 1.methods.sort
#p drink.methods

puts "======="
class Drink
  def order(name)
    puts "#{name}をください"
  end
end

drink = Drink.new
drink.order("カフェラテ")

puts "======="
class Drink
  def name
    p self
    "モカ" + topping
  end
  def topping
    "エスプレッソショット"
  end
end

drink = Drink.new
p drink
puts drink.name

puts "======="
class Drink
  def name
    #p self
    "モカ" + self.topping
  end
  def topping
    "1エスプレッソショット"
  end
end

drink = Drink.new
#p drink
puts drink.name


puts "======="
drink = Drink.new
p drink
beer = drink.new
p beer
=end

puts "======="
class Drink
  def order(item)
    puts "#{item}をください"
    @name = item
  end
  def reorder
    puts "#{@name}をもう1杯ください"
  end

end

drink = Drink.new#オブジェクト作成
drink.order("カフェラテ")
drink.reorder
