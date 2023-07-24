# 例外処理
# puts "金額を入力してください"
# bill = gets.to_i
# puts "割り勘する人数を入力してください"
# number = gets.to_i
# warikan = bill / number
# puts "一人当たり#{warikan}円です"

# begin rescue end
# puts "金額を入力してください"
# bill = gets.to_i
# puts "割り勘する人数を入力してください"
# number = gets.to_i
# begin
#   warikan = bill / number
#   puts "一人当たり#{warikan}円です"
# rescue ZeroDivisionError
#   puts "0人では割り勘できません"
# end

# メソッド内の例外処理
# def warikan(bill, number)
#   warikan = bill / number
#   puts "一人当たり#{warikan}円です"
# rescueZeroDivisionError
#   puts "0人では割り勘できません"
# end

# warikan(100, 10)
# warikan(100, 0)

# ブロック内の例外処理
# bill = 100
# numbers = [0, 1, 2]

# numbers.each do |number|
#   warikan = bill / number
#   puts "一人当たり#{warikan}円です"
# rescue ZeroDivisionError
#   puts "0人では割り勘できません"
# end

# 例外処理を使わずに事前に分母の値をチェックする
# def warikan(bill, number)
#   if number.zero?
#     puts "0人では割り勘できません"
#     return
#   end
#     warikan = bill / number
#     puts "一人当たり#{warikan}円です"
# end

# warikan(100, 10)
# warikan(100, 0)

# Errorのクラス
# puts SyntaxError.superclass
# puts NoMethodError.superclass
# puts NameError.superclass
# puts ScriptError.superclass

# 例外を発生させるraiseメソッド
# def type(age)
#   if age < 0
#     raise "年齢が０歳を下回っています。（#{age}歳）"
#   elsif age < 20
#     "未成年"
#   else
#     "成年"
#   end
# end

# age = ARGV.first.to_i
# type = type(age)
# puts "#{age}歳は#{type}です"

# 例外の有無に関わらず必ず処理を実行する ensure

# def type(age)
#   if age < 0
#     raise "年齢が０歳を下回っています。（#{age}歳）"
#   elsif age < 20
#     "未成年"
#   else
#     "成年"
#   end
# end

# begin
#   # 例外が発生する可能性のある処理
#   age = ARGV.first.to_i
#   puts "#{age}歳は#{type(age)}です"
# rescue => e #Exception => e
# # 例外が発生した時に実行する処理
# puts "例外が発生しました: #{e.message}"
# #else
#   # other exception
# ensure
#   # always executed
#   # 例外の発生に関わらず実行される処理
#   puts "ご利用ありがとうございました"
# end

# インスタンス変数を簡単に操作する
# class Drink
#   def name
#     @name
#   end
#   def name=(text)
#     @name = text
#   end
# end

# attr_reader
# class Drink
#   attr_reader :name
#   def name
#     @name
#   end
#   def name=(text)
#     @name = text
#   end
# end

# drink = Drink.new
# drink.name = "カフェラテ"
# p drink.name

# attr_writer
# class Drink
#   attr_reader :name
#   # def name
#   #   @name
#   # end
#   attr_writer :name
#   # def name=(text)
#   #   @name = text
#   # end
# end

# drink = Drink.new
# drink.name = "カフェラテ"
# p drink.name

# attr_accessor
# class Drink
#   # def name
#   #   @name
#   # end
#   # attr_reader :name
#   # def name=(text)
#   #   @name = text
#   # end
#   # attr_writer :name
#   attr_accessor :name
# end

# drink = Drink.new
# drink.name = "カフェラテ"
# p drink.name

# self クラスのインスタンスメソッド内
# class Drink
#   def me
#     p self.object_id
#   end
# end
# drink = Drink.new
# p drink.object_id
# drink.me

# self クラスメソッド内
# class Drink
#   def self.me
#     p self.object_id
#   end
# end

# p Drink.object_id
# Drink.me

# クラスメソッドとインスタンスメソッドでのインスタンス変数は別物
# class Drink
#   def name
#     p self.object_id
#     @name = "カフェラテ"
#   end
#   def self.name
#     p self.object_id
#     @name
#   end
# end

# drink = Drink.new
# drink.name
# p Drink.name

# クラス変数
# @@name

# 正規表現
# p "カフェラテ".match?(/ラテ/)
# p "ティーラテ".match?(/ラテ/)
# p "モカ".match?(/ラテ/)
# p "カフェLatte".match?(/ラテ/)
# p "カフェlatte".match?(/ラテ/)

# 文字列が条件と合致するか判定する
 # 末尾がラテで終わるか？
# p "カフェラテ".match?(/ラテ\z/)
# p "ティーラテ".match?(/ラテ\z/)
# p "モカ".match?(/ラテ\z/)
# p "ラテアート".match?(/ラテ\z/)
# p "ラッテラテ".match?(/ラテ\z/)
# p "カフェLatte".match?(/ラテ\z/)
# p "カフェlatte".match?(/ラテ\z/)

# 文字列が条件と合致するか判定する
 # 先頭がラテで始まるか？
# p "カフェラテ".match?(/\Aラテ/)
# p "ティーラテ".match?(/\Aラテ/)
# p "モカ".match?(/\Aラテ/)
# p "ラテアート".match?(/\Aラテ/)
# p "ラッテラテ".match?(/\Aラテ/)

# その他の正規表現
# p "This is a pen.".match?(/[tps]/)
# p "This song is ABC song.".match?(/[ABC]/)
# p "This song isn't abc song.".match?(/[abc]/)
# p "This song is ABC song.".match?(/[A-G]/)
# p "This song isn't abc song.".match?(/[a-g]/)
# p "This song is ABC song.".match?(/[A.c]/)

# 条件に合致したものを抽出する
# ["カフェラテ", "ラーメンらて", "モカラテ", "コーヒー"].each do |drink|
#   puts drink if drink.match?(/ラテ/)
# end

# 条件に合致する文字列を置換する
# p "カフェラテ".gsub("カフェ", "ティー")
# p "ラテラテ".gsub(/\Aラテ/, "カフェ")
# p "ラテラテ".gsub("ラテ", "カフェ")
 # gsub!破壊的メソッド

# ブロックを渡すメソッド
# drinks = ["カフェラテ", "コーヒー"]
# drinks.each do |drink|
#   puts drink
# end

# def foo
#   p block_given?
# end

# foo

# foo do
# end

# def dice
#   if block_given? # ブロックが渡されたか？
#     # ブロックが渡された時の処理
#     puts "run block"
#     # 渡されたブロックを実行
#     yield
#   else
#     # ブロックが渡され無かった時の処理
#     puts "normal dice"
#     puts [1, 2, 3, 4, 5, 6].sample
#   end
# end

# dice #1~6までの1つをランダムに表示

# def dice
#   if block_given? # ブロックが渡されたか？
#     # ブロックが渡された時の処理
#     puts "run block"
#     # 渡されたブロックを実行
#     yield
#   else
#     # ブロックが渡され無かった時の処理
#     puts "normal dice"
#     puts [1, 2, 3, 4, 5, 6].sample
#   end
# end

# dice do
#   puts [4, 5, 6].sample #4~6までの1つをランダムに表示
# end

# 渡されたブロックを引数で受け取る

def foo(&b)
  b.call
  p b.class
end

foo do
  puts "Chunky bacon!!"
end

