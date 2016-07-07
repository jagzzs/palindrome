require "palindrome"
require "test/unit"

class TestPalindrome < Test::Unit::TestCase

  #negative tests
  def test_empty_input_is_not_palindrome
    assert_equal("".palindrome?, false, "Empty input returned that's a palindrome")
  end

  def test_special_chars_input_is_not_palindrome
    assert_equal("!@$%^&*=".palindrome?, false, "Special chars input returned that's a palindrome")
  end

  def test_even_alphabetic_input_is_not_palindrome
    assert_equal("abbb".palindrome?, false, "Even alphabetic input returned that's a palindrome")
  end

  def test_even_numeric_input_is_not_palindrome
    assert_equal("1222".palindrome?, false, "Even numeric input returned that's a palindrome")
  end

  def test_even_alphanumeric_input_is_not_palindrome
    assert_equal("a11b".palindrome?, false, "Even alphanumeric input returned that's a palindrome")
  end

  def test_odd_alphabetic_input_is_not_palindrome
    assert_equal("ababc".palindrome?, false, "Odd alphabetic input returned that's a palindrome")
  end

  def test_odd_numeric_input_is_not_palindrome
    assert_equal("12122".palindrome?, false, "Odd numeric input returned that's a palindrome")
  end

  def test_odd_alphanumeric_input_not_palindrome
    assert_equal("a1a11".palindrome?, false, "Odd alphanumeric input returned that's a palindrome")
  end

  def test_phrase_is_not_palindrome
    phrase = "This is clearly not a palindrome"
    assert_equal(phrase.palindrome?, false, "The phrase \"" + phrase + "\" returned that's a palindrome")
  end

  def test_invalid_input_exits_with_1
    assert_raise(SystemExit) do
      begin
        evaluate_input("This is clearly not a palindrome")
      rescue SystemExit => e
        raise e if e.status == 1
      end
    end
  end

  #positive tests
  def test_one_char_numeric_input_is_palindrome
    assert_equal("1".palindrome?, true, "One char numeric input returned that's not a palindrome")
  end

  def test_one_char_alphabetic_input_is_palindrome
    assert_equal("a".palindrome?, true, "One char alphabetic input returned that's not a palindrome")
  end

  def test_even_alphabetic_input_is_palindrome
    assert_equal("abba".palindrome?, true, "Even alphabetic input returned that's not a palindrome")
  end

  def test_even_numeric_input_is_palindrome
    assert_equal("1221".palindrome?, true, "Even numeric input returned that's not a palindrome")
  end

  def test_even_alphanumeric_input_is_palindrome
    assert_equal("a11a".palindrome?, true, "Even alphanumeric input returned that's not a palindrome")
  end

  def test_odd_alphabetic_input_is_palindrome
    assert_equal("ababa".palindrome?, true, "Odd alphabetic input returned that's not a palindrome")
  end

  def test_odd_numeric_input_is_palindrome
    assert_equal("12121".palindrome?, true, "Odd numeric input returned that's not a palindrome")
  end

  def test_odd_alphanumeric_input_is_palindrome
    assert_equal("a1a1a".palindrome?, true, "Odd alphanumeric input returned that's not a palindrome")
  end

  def test_phrase_is_palindrome
    phrase = "Are we not pure? “No sir!” Panama’s moody Noriega brags. “It is garbage!” Irony dooms a man; a prisoner up to new era"
    assert_equal(phrase.palindrome?, true, "The phrase \"" + phrase + "\" returned that's not a palindrome")
  end

  def test_valid_input_exits_with_0
    assert_nothing_raised(SystemExit) do
      begin
        evaluate_input("abba")
      rescue SystemExit => e
        raise e unless e.status == 0
      end
    end
  end

end
