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

# class Drink
#   def whipped_cream
#     @name += "ホイップクリーム"
#   end 
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

# moduleは複数のクラスで共同利用が可能

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

# class Cake
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

# cake = Cake.new("チョコレートケーキ")
# cake.whipped_cream
# puts cake.name

# moduleのメソッドをクラスメソッドにする
# module Greeting
#   def welcome
#     "へいらっしゃい"
#   end 
# end 

# class Cafe
#   extend Greeting
# end 

# puts Cafe.welcome

# moduleにクラスメソッドを定義する
# module WhippedCream
#   def self.info
#     "トッピング用ホイップクリーム"
#   end 
# end 

# puts WhippedCream.info

# moduleに定数を定義する
# module WhippedCream
#   Price = 100
# end 

# puts WhippedCream::Price

# Rubyが用意しているmoduleを使う
# puts Math::PI
# puts Math.cos(Math::PI)

# 名前空間
# module BecoCafe
#   class Coffee
#     def self.info
#       "深みと香りのコーヒー"
#     end
#   end
# end 

# module MachuCafe
#   class Coffee
#     def self.info
#       "豊かな甘みのコーヒー"
#     end
#   end
# end 

# puts BecoCafe::Coffee.info
# puts MachuCafe::Coffee.info

# 別ファイルのクラスやモジュールを読み込む
# require_relative "zero9_2"
# class Drink
#   include WhippedCream
#   def name
#     @name
#   end 
#   def initialize
#     @name = "モカ"
#   end 
# end 

# mocha = Drink.new
# mocha.whipped_cream
# puts mocha.name

# # require_relative => require
# require "./zero9_2"
# class Drink
#   include WhippedCream
#   def name
#     @name
#   end 
#   def initialize
#     @name = "モカ"
#   end 
# end 

# mocha = Drink.new
# mocha.whipped_cream
# puts mocha.name

# 練習問題
# 9-1
# module ChocolateChip
#   def chocolate_chip
#     @name += "チョコレートチップ"
#   end 
# end 

# class Drink
#   include ChocolateChip
#   def initialize(name)
#     @name = name
#   end 
#   def name
#     @name
#   end 
# end 

# drink = Drink.new("モカ")
# drink.chocolate_chip
# puts drink.name

# 9-2
module EspressoShot
  Price = 100
end 

puts EspressoShot::Price

# 9-3
require_relative "zero9_2"
puts WhippedCream.info