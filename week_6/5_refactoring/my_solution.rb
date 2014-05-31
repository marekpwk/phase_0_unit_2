# U2.W6: Refactoring for Code Readability


# I worked on this challenge [with: Adrian Tawadros].


# Original Solution
class CreditCard
  def initialize (credit_card_number)    #giving values to each method
    @card_number = credit_card_number.to_s #convert to a string
    @card_number_array = Array.new #create new array for @card_number_array
    @alog_value = 0 #sets @alog_value at 0
    @valid = false # sets @valid as false
  end

  def check_card #a method based on the value of the alog method
    if alog == true
      p "Your credit card is valid!"
    else
      p "Not a valid credit card number!"
    end
  end

  def alog #method that will raise a ArgumentError, if @card_number.length != 16, otherwise will call the other methods
    raise ArgumentError.new("Not a valid credit card number!") if @card_number.length != 16
    double_up
    add_numbers
    divide_by_10
  end

  def double_up #method that doubles every second number, starting from the last number
    @card_number_array = @card_number.chars.to_a
    @card_number_array = @card_number_array.collect {|x| x.to_i}
    i = 14
    8.times do
      @card_number_array.insert(i, @card_number_array[i] * 2)
      @card_number_array.delete_at(i + 1)
      i -= 2
    end
    @card_number_array
  end

  def add_numbers #method that is adding all the numbers in @card_number_array together
    @card_number_array.each do |x|
      if x < 10
        @alog_value += x
      else
        double_digit = x.to_s.chars.to_a
        double_digit.each {|y| @alog_value += y.to_i}
      end
    end
    @alog_value
  end

  def divide_by_10 #method that checks to see that the @alog_value value from method add_numbers is divisable by 10
    x = @alog_value % 10
    if x == 0
      @valid = true
    else
      @valid = false
    end
    @valid
  end

end
def assert
  raise "Assertion failed!" unless yield
end

# Driver code Initial
assert {CreditCard.new(4408041234567893).check_card == "Your credit card is valid!"}

assert {CreditCard.new(4408041234567892).check_card == "Not a valid credit card number!"}


# Driver code #1: Verifies class takes 1 argument.

assert {CreditCard.instance_method(:initialize).arity == 1}
# Driver code #2: Verifies that 'check_card' takes no arguments.

assert {CreditCard.instance_method(:check_card).arity == 0}




# Refactored Solution
class CreditCard
  def initialize (credit_card_number)
    @card_number = credit_card_number
    raise ArgumentError.new("Not a valid credit card number!") if @card_number.to_s.length != 16  #removed def alog method, so that ArgumentError is in the initialize method
#     @card_number_array = []
#     @alog_value =
#     @valid = false
  end

  def check_card
    card_number_array = []
    card_number_array=@card_number.to_s.split("")
    card_number_array=card_number_array.reverse
    sum=[]
    card_number_array.each_with_index do |element, index|

      sum << if ((index+1) % 2 == 0)
             element.to_i * 2
           else
             element.to_i
          end
     end

     finalSum = 0
     sumArray = []
     sumArray = sum.join.split("")
     sumArray.each do |x|
      finalSum += x.to_i
     end

     finalSum % 10 == 0

end
end



def assert
  raise "Assertion failed!" unless yield
end



def assert
  raise "Assertion failed!" unless yield
end


# DRIVER TESTS GO BELOW THIS LINE

assert {CreditCard.new(4408041234567893).check_card == true}

assert {CreditCard.new(4408041234567892).check_card == false}

# Driver code #1: Verifies class takes 1 argument.

assert {CreditCard.instance_method(:initialize).arity == 1}
# # Driver code #2: Verifies that 'check_card' takes no arguments.

assert {CreditCard.instance_method(:check_card).arity == 0}






# Reflection
# This challenge was interesting and difficult at the same time. We had to re-factor someone else's code,
# which is really hard. First we had to figure out what to change, then how, then ask ourselves is it really better?
# I think one of the important questions here was, should we re-factor piece by piece or just delete most of the code and start from scratch.