
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'bob'

class BobTest < Minitest::Test
  def bob
    ::Bob.new
  end

  def feedback(text)
    "Bob hears #{text.inspect}, and.."
  end

  def test_stating_something
    remark = 'Tom-ay-to, tom-aaaah-to.'
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)
  end

  def test_shouting
    remark = 'WATCH OUT!'
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)
  end

  def test_shouting_gibberish
    remark = ('A'..'Z').to_a.sample(10).join
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)
  end

  def test_asking_a_question
    remark = 'Does this cryogenic chamber make me look fat?'
    assert_equal 'Sure.', bob.hey(remark), feedback(remark)
  end

end
