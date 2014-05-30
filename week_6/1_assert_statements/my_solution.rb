require 'test/unit'
# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: Angela Kosek, Isaac Keith].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end


# 2. Pseudocode what happens when the code above runs
# We have to define assert.  We raise the assertion 'failed' unless yield.
# If there was a block of code to yield, it would execute that block. In this
# example assert is true for bettysue because name is defined as bettysue. Because
# name is not defined as billybob, it raises "Assertion failed".


# 3. Copy your selected challenge here

class CreditCard
  attr_reader :number
  def initialize (number)
    if number.to_s.length != 16
      raise ArgumentError.new()
    end
    @number = number
  end

  def check_card
    numbers_to_array = []
    @number.to_s.split("").reverse.each_with_index { |item, index| index % 2 == 0 ? numbers_to_array << [item.to_i] : numbers_to_array << [item.to_i * 2] }
    numbers_to_array.map!{ |item| item[0] > 9 ? item[0].to_s.split("").map(&:to_i) : item }.flatten!.inject(:+) % 10 == 0
  end
end




# 4. Convert your driver test code from that challenge into Assert Statements


invalid_number = ("1"*16).to_i
credit = CreditCard.new(invalid_number)
assert {credit.check_card() == false}

valid_number = 4563960122001999
credit = CreditCard.new(valid_number)
assert {credit.check_card() == true}

invalid_number = 123
CreditCard.new(invalid_number) rescue error_message = $!.message
assert {error_message == "ArgumentError"}

invalid_number = 45639601220019991
CreditCard.new(invalid_number) rescue error_message = $!.message
assert {error_message == "ArgumentError"}




class TestCreditCheck < Test::Unit::TestCase

  def test_to_short_number
    number = 123
    assert_raise (ArgumentError) {CreditCard.new(number)}
  end

  def test_to_long_number
    number = 45639601220019991
    assert_raise (ArgumentError) {CreditCard.new(number)}
  end

  def test_to_invalid_number
    number = ("1"*16).to_i
    assert_equal(false, CreditCard.new(number).check_card)
  end

  def test_valid_number
    number = 4563960122001999
    assert_equal(true, CreditCard.new(number).check_card)
  end


end



# 5. Reflection


