#親クラスで定義されたメソッドを子クラスで同じ名前で定義したとします。
#この場合、親クラスは実行されず、子クラスで定義されたメソッドが実行されます。
#このようにメソッド内で処理を上書きすることをオーバーライドと言います。
#親クラスだけでは実現したい機能が満たせず、子クラスでの機能を追加する場合に
#利用されます。

#class Car
#. def run(distance)
#.    puts "車で#{distance}キロ走ります。"
#  end
#end
#
#class Bus < Car
#  def run(distance)
#.   puts "バスで#{distance}キロ走ります。"
#. end
#end

#bus = Bus.new
#bus.run(5)


class Car
  def run(distance)
    puts "車で#{distance}キロ走ります。"
  end
end

class Bus < Car
  def run(distance)
    #子クラスのメソッド内で定義すると、親クラス内にある同じ名前のメソッドを呼び出す
    #ことができます。
    super
    puts "30人を乗せて、走っています。"
  end
end

bus = Bus.new
bus.run(5)