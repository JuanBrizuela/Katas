require 'minitest/autorun'
require_relative 'word_patterns'

class WordPatternsTest < Minitest::Test
  def test_it_works
    assert_equal(word_pattern('abab', 'apple banana apple banana'), true)
    assert_equal(word_pattern('abba', 'car truck truck car'), true)
    assert_equal(word_pattern('abab', 'apple banana banana apple'), false)
    assert_equal(word_pattern('aaaa', 'cat cat cat cat'), true)
    assert_equal(word_pattern('aaaa', 'cat cat dog cat'), false)
  end
end
