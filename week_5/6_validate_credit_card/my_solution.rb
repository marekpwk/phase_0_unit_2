# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Angela Kosek, Issac Keith].

# 2. Pseudocode

# Input: Credit card number
# Output: Returns true if credit card number is valid, flase otherwise
# Steps:
#We initialize the class with the CreditCard number first.
#Then we created an if statement if the #creditcard number is not equal to 16 digits,
#raise ArgumentError. We are defining number as an instance #variable.
#We then took the number and turned it into a string, then split it to an array, then reversed it.
#We are then taking each index and the item in each index and seeing if that index is even. If it is even
#we add them all together and put them in a variable that we are defining specifically for those numbers_to_array.
#We then pull the odd indexes and double the item in them. From there we call the split method to separate all the numbers_to_array
#to add them together.

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard

  def initialize (number)
    if number.to_s.length != 16
      raise ArgumentError.new()
    end
    @number = number
  end

  def check_card ()
    numbers_to_array = []
    temp_array = @number.to_s.split("").reverse
    temp_array.each_with_index do |item, index|
      if index % 2 == 0
        numbers_to_array << (item.to_i).to_s
      else
        numbers_to_array << (item.to_i * 2).to_s
      end
    end
    numbers_to_array.map! { |item| item.size == 2 ?  item.split("") : item } # splits double string like "18" into an array [1,8]
    numbers_to_array.flatten! # concatenates main and sub arrays and converst each elemt to integer
    numbers_to_array.map!{|item| item.to_i}
    sum = numbers_to_array.inject(:+)
    sum % 10 == 0
  end

end

# 4. Refactored Solution

class CreditCard

  def initialize (number)
    if number.to_s.length != 16
      raise ArgumentError.new()
    end
    @number = number
  end

  def check_card
    numbers_to_array = []
    @number.to_s.split("").reverse.each_with_index { |item, index| index % 2 == 0 ? numbers_to_array << [item.to_i] : numbers_to_array << [item.to_i * 2] }
    numbers_to_array.map! { |item| item[0] > 9 ? item[0].to_s.split("") : item }.flatten!.map!{ |item| item.to_i }.inject(:+) % 10 == 0
  end

end



# 1. DRIVER TESTS GO BELOW THIS LINE
invalid_number = ("1"*16).to_i
credit = CreditCard.new(invalid_number)
puts credit.check_card() == false

valid_number = 4563960122001999
credit = CreditCard.new(valid_number)
puts credit.check_card() == true





# 5. Reflection
