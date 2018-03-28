#!/usr/bin/env ruby
# -*- ruby -*-

require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutAsserts < Neo::Koan

  # We shall contemplate truth by testing reality, via asserts.
  def test_assert_truth
    assert true                # This should be true
  end

  # Enlightenment may be more easily achieved with appropriate
  # messages.
  def test_assert_with_message
    assert true, "This should be true -- Please fix this"
  end

  # To understand reality, we must compare our expectations against
  # reality.
  def test_assert_equality
    expected_value = 2
    actual_value = 1 + 1

    assert expected_value == actual_value
  end

  # Some ways of asserting equality are better than others.
  def test_a_better_way_of_asserting_equality
    expected_value = 2
    actual_value = 1 + 1

    assert_equal expected_value, actual_value
  end

  # Sometimes we will ask you to fill in the values
  def test_fill_in_values
    assert_equal 2, 1 + 1
  end
  # My koans
  def test_up_and_down_lettercase
    low_text = "ruby koans"
    up_text = low_text.upcase
    assert_equal "RUBY KOANS", up_text
  end


  def test_capitalize_the_string
    text = "vitaliy, hello"
    capitalize_text = text.capitalize
    assert_equal capitalize_text, "Vitaliy, hello"
  end

  def test_round_of_nums
    a = 4.5
    a.to_f
    assert_equal a.round(half: :up), 5
    assert_equal a.round(half: :down), 4
    assert_equal a.round(half: :even), 4
  end

  

end
