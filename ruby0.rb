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

class Drink
  drink = "abc"
  drinka = drink.new(1, 2, 3)
  p drinka
end 