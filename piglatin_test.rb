require 'minitest/autorun'
require_relative 'piglatin'
require 'pry'

class PigLatinTest < Minitest::Test

  def test_it_can_change_word_starting_with_vowel
    assert_equal "ateay", Piglatin.call("eat")
  end

  def test_it_can_change_words_starting_with_vowel
    answer = "ateay teaay"
    assert_equal answer, Piglatin.call("eat ate")
  end

  def test_it_can_change_one_consonants
    answer = "eadbray"
    assert_equal answer, Piglatin.call("bread")
  end

  def test_it_can_change_one_three_letter_consonants
    answer = "oughthray"
    assert_equal answer, Piglatin.call("through")
  end

  def test_it_can_change_multiple_words
    answer = "oughthray eadbray ateay owcay"
    assert_equal answer, Piglatin.call("through bread eat cow")
  end
end
