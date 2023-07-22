# puts "======="
# p 1.class
# p 2.class
# p 100.class
# puts "======="
# p "ラーメン".class
# p "hello".class
# p "".class
# puts "======="
# p [1, 2, 3].class
# p ["コーヒー", "ラーメン", "パフェ"].class
# p [].class
# puts "======="
# p 1.even?
# p 2.even?
# p 100.even?
#p "ラーメン".even?
  #=>(undefined method `even?' for "ラーメン":String (NoMethodErro)
# p "カフェラテ"
# p [1, 2, 3]
# p String.new
# p String.new("カフェラテ")
# p Array.new
# p Array.new(2, "カフェラテ")
#p Array.new("カフェラテ", 2)
  #=>no implicit conversion of String into Integer (TypeError)
# p Array.new.push("ラーメン", 2, "チャーハン")
# puts "===クラスを作る===="

# class Drink
# end
# drink = Drink.new
# p drink.class
# # p drink
#   #=>#<Drink:0x00007f9eeefb5600>
# # puts drink
#   #=>#<Drink:0x00007f6af9d3d8b0>
# # p drink
#   #=>#<Drink:0x00007f7c1c705900>
# p Drink.new.class

# puts "======="
# p Drink.class
# p Array.class
# p Integer.class
# p String.class
# puts "======="
# class Drink
#   def name
#     "カフェラテ"
#   end
# end

# drink = Drink.new
# puts drink.name
# #p 1.methods.sort
# #p drink.methods

# puts "======="
# class Drink
#   def order(name)
#     puts "#{name}をください"
#   end
# end

# drink = Drink.new
# drink.order("カフェラテ")

# puts "======="
# class Drink
#   def name
#     p self
#     "モカ" + topping
#   end
#   def topping
#     "エスプレッソショット"
#   end
# end

# drink = Drink.new
# p drink
# puts drink.name

# puts "======="
# class Drink
#   def name
#     #p self
#     "モカ" + self.topping
#   end
#   def topping
#     "1エスプレッソショット"
#   end
# end

# drink = Drink.new
# #p drink
# puts drink.name


# puts "======="
# drink = Drink.new
# p drink
# beer = drink.new
# p beer

# puts "======="
# class Drink
#   def order(item)
#     puts "#{item}をください"
#     @name = item
#   end
#   def reorder
#     puts "#{@name}をもう1杯ください"
#   end

# end

# drink = Drink.new#オブジェクト作成
# drink.order("カフェラテ")
# drink.reorder

# puts "======="
# class Drink
#   def order(item)
#     puts "#{item}をください"
#     @name = item
#   end
#   def reorder
#     puts "#{@name}をもう一杯ください"
#   end
# end

# drink1 = Drink.new
# drink2 = Drink.new
# drink1.order("カフェラテ")
# drink2.order("モカ")
# drink1.reorder
# drink2.reorder


# puts "===クラスを作る2===="

# class Drink
# end
# drink = Drink.new
# p drink.class
# p Drink.new.class
# p Drink.class


# class Drink
#   def name
#     "カフェラテ"
#   end
# end
# drink = Drink.new
# puts drink.name
# puts drink


# class Drink
#   def order(name)
#     puts "#{name}をください"
#   end
# end
# drink = Drink.new
# drink.order("カフェラテ")

# class Drink
#   def name
#     "モカ" + topping
#   end
#   def topping
#     "ニンニクマシマシ"
#   end
# end

# drink = Drink.new
# puts drink.name

# class Drink
#   def order(item)
#     puts "#{item}をください"
#     name = item
#     puts "#{name}をやっぱりやめます" # nameはローカル変数なのでorderメソッドの中でしか使用できない
#   end
#   def reorder
#     puts "#{name}をもう一杯ください"
#   end
# end

# drink = Drink.new
# drink.order("カフェラテ")
# drink.reorder

# インスタンス変数の登場
# class Drink
#   def order(item)
#     puts "#{item}をください"
#     @name = item
#   end
#   def reorder
#     puts "#{@name}をもう一杯ください"
#     p @item # 代入されていないインスタンス変数はnilを返す
#   end
# end

# drink = Drink.new
# drink.order("カフェラテ")
# drink.reorder

# インスタンス変数はオブジェクトごとに存在する
# class Drink
#   def order(item)
#     puts "#{item}をください"
#     @name = item
#   end
#   def reorder
#     puts "#{@name}をもう一杯ください"
#     p @item # 代入されていないインスタンス変数はnilを返す
#   end
# end

# drink1 = Drink.new
# drink2 = Drink.new
# puts drink1
# puts drink2
# drink1.order("カフェラテ")
# drink1.reorder
# drink2.order("カレー")
# drink2.reorder

# インスタンス変数を取得するメソッド
# class Drink
#   #attr_reader :name
#   def order(item)
#     puts "#{item}をください"
#     @name = item
#   end

#   def name
#     @name
#   end
# end

# drink = Drink.new
# drink.order("カフェラテ")

# puts drink.name

# インスタンス変数へ代入するメソッド
# class Drink
#   #attr_writer :name
#   def name=(text)
#     @name = text
#   end
#   def name
#     @name
#   end
# end
# drink = Drink.new
# drink.name="カフェオレ"
# puts drink.name

# インスタンス変数の変数名一覧を取得できるメソッド
# class Drink
#   def order(item)
#     @name = item
#   end
# end

# drink = Drink.new
# #drink.order("カフェラテ")
# p drink.instance_variables

# initializeメソッドという特別なメソッド
# class Drink
#   def initialize
#     puts "新しいオブジェクト！"
#   end
# end
# Drink.new

# class Drink
#   def initialized => １文字でも違うと機能しない
#     puts "新しいオブジェクト！"
#   end
# end

# Drink.new

#　インスタンスの初期値
# class Drink
#   def initialize
#     @name = "カフェラテ"
#   end
#   def name
#     @name
#   end
# end
# drink = Drink.new
# puts drink.name

# initializeメソッドへ引数を渡す
# class Drink
#   def initialize(name)
#     @name = name
#   end
#   def name
#     @name
#   end
# end
# drink = Drink.new("モカ")
# puts drink.name

# class Drink
#   def initialize(name)
#     @name = name
#   end
#   def name
#     @name
#   end
# end
# drink1 = Drink.new("モカ")
# drink2 = Drink.new("カフェラテ")
# drink3 = Drink.new("コーヒー")
# puts drink1.name
# puts drink2.name
# puts drink3.name

# クラスメソッド
# class Cafe
#   def self.welcome
#     "いらっしゃいませ！"
#   end
# end

# puts Cafe.welcome

# class Cafe
#   def self.welcome
#     "いらっしゃいませ！"
#   end
#   def self.welcome_again
#     welcome + "いつもありがとう！"
#   end
# end

# puts Cafe.welcome_again

# インスタンスメソッドからクラスメソッドを呼び出す
# ！注意！クラスメソッドからインスタンスメソッドは呼び出せない
# class Cafe
#   def self.welcome
#     "注文してもいいですか？"
#   end
#   def order(item)
#     puts self.class.welcome
#     "#{item}をお願いします"
#   end
# end

# drink = Cafe.new
# puts drink.order("カフェラテ")

# クラスメソッドの別の定義方法
# class Cafe
#   def self.welcome
#     "いらっしゃいませ！"
#   end
# end

# class Cafe
#   def Cafe.welcome
#     "いらっしゃいませ！"
#   end
# end

# class Cafe
#   class << self
#     def welcome
#       "いらっしゃいませ！"
#     end
#   end
# end


# 継承
# class Item
#   def name
#     @name
#   end
#   def name=(text)#インスタンス変数へ代入するメソッド
#     @name = text
#   end
# end

# class Drink < Item
#   # def name
#   #   @name
#   # end
#   # def name=(text)#インスタンス変数へ代入するメソッド
#   #   @name = text
#   # end
#   def size
#     @size
#   end
#   def size=(text)#インスタンス変数へ代入するメソッド
#     @size = text
#   end
# end

# item = Item.new
# item.name = "マフィン"

# drink = Drink.new
# drink.name = "カフェオレ"
# drink.size = "tall"
# puts "#{item.name} #{drink.name} #{drink.size}サイズ"

# Rubyが用意しているクラスたちの継承関係
# p Integer.superclass
# p Integer.ancestors
# p String.ancestors
# p Array.ancestors

# class Drink
# end
# p Drink.ancestors

# 親子のクラスで同じ名前のメソッドを作った時の動作
# class Item
#   def name
#     @name
#   end
#   def name=(text)
#     @name = text
#   end
#   def full_name
#     @name
#   end
# end
# item = Item.new
# item.name = "マフィン"
# puts item.full_name

# class Drink < Item
#   def size
#     @size
#   end
#   def size=(text)
#     @size = text
#   end
#   def full_name
#     "#{@name} #{@size}サイズ"
#   end
# end

# drink = Drink.new
# drink.name = "カフェオレ"
# drink.size = "tall"
# puts drink.full_name

# 親クラスのメソッドを呼び出す -super
# class Item
#   def name
#     @name
#   end
#   def name=(text)
#     @name = text
#   end
#   def full_name
#     @name
#   end
# end
# item = Item.new
# item.name = "マフィン"
# puts item.full_name

# class Drink < Item
#   def size
#     @size
#   end
#   def size=(text)
#     @size = text
#   end
#   def full_name
#     #super
#     "#{super} #{@size}サイズ"
#   end
# end

# drink = Drink.new
# drink.name = "カフェオレ"
# drink.size = "tall"
# puts drink.full_name

# メソッドの呼び出しを制限する private

# class Cafe
#   def staff
#     makanai
#   end 
#   private
#     def makanai
#       "店員用のスペシャルメニュー"
#     end 
# end 

# cafe = Cafe.new
# puts cafe.staff
# puts cafe.makanai

# class Cafe
#   def staff
#     makanai
#   end 
#   private
#     def makanai
#       "店員用のスペシャルメニュー"
#     end 
# end

# #実験
# class Drink < Cafe
#   def sdrink
#     makanai
#   end
# end 


# cafe = Cafe.new
# puts cafe.staff
# # puts cafe.makanai
# drink = Drink.new
# puts drink.sdrink

# privateとpublic

# class Foo
#   def a #public
#   end 
#   def b #publlic
#   end 
  
#   private
#     def c #private
#     end 
#     def d #private
#     end 
    
# end 
# class Foo
#   def a #public
#   end 
#   def b #public
#   end 
  
#   private
#     def c #private
#     end 
#   public
#     def d #public
#     end 
    
# end 

# class Foo
#   private def a #private
#   end 
#   def b #public
#   end 
# end 

# privateなクラスメソッド
# class Foo
#   private 
#   def self.a
#     "method a"
#   end 
# end 
# p Foo.a

# class Foo
#   private_class_method def self.a
#     "method a"
#   end 
# end 
# p Foo.a


# class Cafe 
#   class << self
#     private def welcome
#     "へいらっしゃい"
#     end 
#   end 
#   def first_greet
#     puts self.class.welcome
#     puts "何にしましょう！？"
#   end
# end 

# cafe = Cafe.new
# cafe.first_greet

# 練習問題
puts "==8-1=="
# p {:coffee => 300, :caffe_latte => 400}.class #自分の回答
p ({:coffee => 300, :caffe_latte => 400}).class
#hash = Hash.new
#p hash
p Hash.new
puts "==8-2=="
class CaffeLatte
end 
caffelatte = CaffeLatte.new
p caffelatte.class
puts "==8-3=="
class Item
  def name
    "チーズケーキ"
  end 
end 

item = Item.new
p item.name
puts "==8-4=="
class Item
  def name=(text)
    @name = text
  end
  def name
    @name
  end 
end

item = Item.new
item.name= "チーズケーキ"
p item.name

puts "==8-5=="
# class Item
#   def initialize
#     # "商品を扱うオブジェクト"
#     p "商品を扱うオブジェクト"
#   end 
# end 
# # item = Item.new
# # p item
# Item.new


# class Item
#   def initialize(item)
#     @name = item
#   end 
#   def name
#     @name
#   end 
# end 

# item1 = Item.new("マフィン")
# item2 = Item.new("スコーン")

# p item1.name
# p item2.name

puts "==8-6=="


class Drink
  def self.todays_special
    "ホワイトモカ"
  end
end 

puts Drink.todays_special

puts "==8-7=="
class Item
  def name
    @name
  end 
  def name=(text)
    @name = text
  end 
end 

class Food < Item
end 

food = Food.new
# puts food.name("チーズケーキ")
# food.name= "チーズケーキ"
food.name = "チーズケーキ"
puts food.name