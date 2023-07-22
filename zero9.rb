# moduleを作る
# module WhippedCream
# end

# moduleにメソッドを定義する
# module WhippedCream
#   def whipped_cream
#     @name += "ホイップクリーム"
#   end 
# end

# moduleのメソッドをクラスで使う -include
# module WhippedCream
#   def whipped_cream
#     @name += "ホイップクリーム"
#   end 
# end
# class Drink
#   include WhippedCream
#   def initialize(name)
#     @name = name
#   end 
#   def name
#     @name
#   end 
# end 

# drink = Drink.new("モカ")
# drink.whipped_cream
# puts drink.name

class Drink
  def whipped_cream
    @name += "ホイップクリーム"
  end 
  def initialize(name)
    @name = name
  end 
  def name
    @name
  end 
end 

drink = Drink.new("モカ")
drink.whipped_cream
puts drink.name