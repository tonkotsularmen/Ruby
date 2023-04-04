class Car
  def run(distance)
    puts "車で#{distance}キロ走ります。"
  end
end

class Supercar < Car
end

supercar = Supercar.new

supercar.run(5)