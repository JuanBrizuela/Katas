require 'minitest/autorun'
require_relative 'ip_calculator'

class IpCalculatorTest < Minitest::Test
  def test_it_works
    assert_equal(ipsBetween("10.0.0.0", "10.0.0.50"), 50);
    assert_equal(ipsBetween("20.0.0.10", "20.0.1.0"), 246);
    assert_equal(ipsBetween('150.0.0.0', '150.0.0.1'), 1);
    assert_equal(ipsBetween('10.0.0.0', '10.0.0.50'), 50);
    assert_equal(ipsBetween('20.0.0.10', '20.0.1.0'), 246);
    assert_equal(ipsBetween('10.11.12.13', '10.11.13.0'), 243);
    assert_equal(ipsBetween('160.0.0.0', '160.0.1.0'), 256);
    assert_equal(ipsBetween('170.0.0.0', '170.1.0.0'), 65536);
    assert_equal(ipsBetween('50.0.0.0', '50.1.1.1'), 65793);
    assert_equal(ipsBetween('180.0.0.0', '181.0.0.0'), 16777216);
    assert_equal(ipsBetween('1.2.3.4', '5.6.7.8'), 67372036);
  end
end
