require 'minitest/autorun'

# 元の値段: 100円
# 白あん +30円
# 大きめ +50円
class Taiyaki
  attr_reader :anko, :size
  def initialize(anko, size)
    @anko = anko
    @size = size
  end

  def price
    amount = 100
    if anko == '白あん'
      amount += 30
    end
    if size == '大きめ'
      amount += 50
    end
    amount
  end

  def to_s
    "あんこ: #{anko}, 大きさ: #{size}, #{price}円"
  end
end

class TaiyakiTest < Minitest::Test
  def test_taiyaki

    taiyaki_1 = Taiyaki.new('あずき', 'ふつう')
    assert_equal 'あずき', taiyaki_1.anko
    assert_equal 'ふつう', taiyaki_1.size
    assert_equal 100, taiyaki_1.price
    assert_equal 'あんこ: あずき, 大きさ: ふつう, 100円', taiyaki_1.to_s

    taiyaki_2 = Taiyaki.new('白あん', '大きめ')
    assert_equal '白あん', taiyaki_2.anko
    assert_equal '大きめ', taiyaki_2.size
    assert_equal 180, taiyaki_2.price
    assert_equal 'あんこ: 白あん, 大きさ: 大きめ, 180円', taiyaki_2.to_s

     taiyaki_3 = Taiyaki.new('あずき', '大きめ')
     assert_equal 150, taiyaki_3.price
  end
end
