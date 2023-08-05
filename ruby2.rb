# # 2.2.1全てがオブジェクト
# p '1'.to_s
# p 1.to_s
# p nil.to_s
# p true.to_s
# p false.to_s
# p /\d+/.to_s

# # 2.2.2メソッド呼び出し
# p 1.to_s()
# p 1.to_s
# p 10.to_s(16)
# p 10.to_s 16

# # 2.2.3文の区切り
# 1.to_s
# nil.to_s
# 10.to_s(16)

# 1.to_s; nil.to_s; 10.to_s(16)

# p 12.to_s(
#   16
#   )
# p 12.to_s \
#   16

# 2.2.4　この行はコメントです
=begin
  ここはコメントです。
  ここもコメントです。
  ここもコメントです。
=end

# 通常はこっち
# ここはコメントです。
# ここもコメントです。
# ここもコメントです。

# 2.2.5 識別子と予約語
# _1 _2 ... _9 => 番号指定パラメータ

# 2.2.6 空白文字
# (5+1             - 2) * 3
# def
#             add         (a, b)
# a+        b
#             end

# puts add(     4, 5 )

# p (5 + 1 - 2) * 3
# def add(a, b)
#   a + b
# end

# p add(4, 5 )

# # p add (4, 5 ) => syntax error

# 2.2.7 リテラル
# 2.2.8変数の宣言と代入
# s = 'Hello'
# n = 123 * 2
# x = nil

# special_price = 200
# specialPrice = 300
# _special_price = 400
# special_price_2 = 500
# # 3_special_price = 600 <= エラー
# 特別価格 = 450
# p 特別価格 * 2
# x = 'Hello'
# p x
# x = 123
# p x
# x = 'Good_bye'
# p x
# x = 456
# p x
# a,b = 1, 2
# p a
# p b
# a,b = 10
# p a
# p b
# a,b = 20, 30, 40
# p a
# p b

# name, age, height = 'Alice', 20, 160
# name = 'Alice'
# age = 20
# height = 160

# first_name, last_name = 'Scott Tiger'.split(' ')
# puts first_name

# a = b = 100
# p a
# p b
# a = b = 'hello'
# p a.upcase!
# p b

# c = 'hello'
# d = 'hello'
# p c.upcase
# p d

# 2.3.1シングルクオートとダブルクオート
# p 'これは文字列です'
# p "これも文字列です"

# puts 'これは\n文字列です'
# puts "これも\n文字列です"
# \rキャリッジリターン
# puts 'これは\r文字列です'
# puts "これも\r文字列です"
# タブ文字
# puts 'これは\t文字列です'
# puts "これも\t文字列です"

# name = 'Alice'
# puts "Hello, #{name}!"

# i = 10
# puts "#{i}は16進数にすると#{i.to_s(16)}です"

# puts 'Hello, #{name}!'
# puts 'Hello' + name + '!'
# puts "こんにちは\\nさよなら"
# puts "Hello, \#{name}!"

# puts 'He said, "Don\'t speak."'
# puts "He said, \"Don't speak.\""

# 2.3.2 文字列の比較
# p 'ruby' == 'ruby'
# p 'ruby' == 'Ruby'
# p 'ruby' != 'perl'
# p 'ruby' != 'ruby'

p 'a' < 'b'
p 'a' < 'A'
p 'a' > 'A'
p 'abc' < 'def'
p 'abc' < 'ab'
p 'abc' < 'abcd'
p 'あいうえお' < 'かきくけこ'

p 'a'.bytes
p 'b'.bytes
p 'A'.bytes
p 'abc'.bytes
p 'あ'.bytes

# 2.4.0
p 10
p 1.5
p -3
p -4.75
p 1_000_000_000_000
p 10 + 20
p 100 - 25
p 12 * 5
p 20 / 5
n = 1
p n 
p -n 
p 1 / 2 # => 0
p 1.0 / 2 # => 0.5
p 1 / 2.0 # => 0.5

n = 4
p n.to_f 
p n.to_f / 2 

p 8 % 3
p 2 ** 3