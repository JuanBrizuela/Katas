require 'minitest/autorun'
require_relative 'simple_pig_latin'

class IpCalculatorTest < Minitest::Test
  def test_it_works
    assert_equal(pig_it('Pig latin is cool'),'igPay atinlay siay oolcay')
    assert_equal(pig_it('This is my string'),'hisTay siay ymay tringsay');
  end
end
