#class Car
#  def run(distance)
#    puts "車で#{distance}キロ走ります"
#  end
#end

#class Bus
#  def run(distance)
#.   puts "車で#{distance}キロ走ります"
#. end
#end

#bus = Bus.new
#bus.run(5)

#class クラス名（サブ） < 継承したいクラス（スーパー）

class Car
  def run(distance)
    puts "車で#{distance}キロ走ります"
  end
end

class Bus < Car
end


bus = Bus.new
bus.run(5)

#継承されているか確認するためのメソッド
puts Bus.superclass