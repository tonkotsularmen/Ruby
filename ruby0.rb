# # pro = Proc.new do
# #   puts "Hello World!"
# # end
# pro = Proc.new { puts "Hello World!" }
# puts pro.class
# puts pro.object_id
# pro.call
# # -> { "Hello" }
# # 3.times do |num|
# #   p num
# # end 

# # proc1 = Proc.new { p "proc" }
# # proc1.call

# # proc2 = Proc.new { |par2| p par2 }
# # proc2.call("arg")

# proc3 = -> {puts "www"}
# proc3.call

# proc3 = ->(word) {puts word}
# proc3.call("abc")

# # default_scope -> { order(created_at: :desc) }
# # ghi -> { puts "Hello!" }

# # f(x)=x
# ->x{x}
# # ->の直後のxがf(x)のxに該当し、{x}のxがf(x)=xの右辺のxに該当します。

# class Drink
#   drink = "abc"
#   drinka = drink.new(1, 2, 3)
#   p drinka
# end 

# NAME = "ruby"
# p NAME
# NAME.freeze
# NAME.upcase!
# p NAME
# =>frozenError

# arr = []
# arr << 6
# arr.push(7)
# p arr

# p Time.now
# # p Time.current => NoMethodError
# # p Time.at(0) # => 1970-01-01 00:00:00 +0000
# (1..10).each {|i| puts i} # => 12345678910 よって10を含む
# (1...10).each {|i| puts i} # => 123456789　よって10を含まない

a = 1
a += 1  
# a = a + 1
p a

b = 5
b =+ 1
p b 