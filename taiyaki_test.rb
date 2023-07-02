require 'minitest/autorun'

class Taiyaki
  attr_reader :anko
  def initialize(anko)
    @anko = anko
  end
end

class TaiyakiTest < Minitest::Test
  def test_taiyaki

    taiyaki_1 = Taiyaki.new('あずき')
    puts taiyaki_1.anko
    assert_equal 'あずき', taiyaki_1.anko


    taiyaki_2 = Taiyaki.new('白あん')
    puts taiyaki_2.anko
    assert_equal '白あん', taiyaki_2.anko



  end
end
