# frozen_string_literal: true

require "test_helper"

class TestEvevenenoPalindrome < Minitest::Test

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_integer_non_palindrome
    refute 12345.palindrome?
  end

  def test_integer_palindrome
    assert 12321.palindrome?
  end

  def test_space_not_palindrome
    refute "   ".palindrome?
  end

  def test_empty_not_palindrome
    refute "".palindrome?
  end

end
