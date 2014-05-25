# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: takes an expression
# Output: returns result of an expression
# Steps:
# DEF evaluate method which will take number as an argument
#   Convert expression to an aray
#   IF only number RETURN number
#   SET stack to empty array
#   LOOP through expression array
#     IF item match number
#       push item to stack
#     ELSE
#       POP two elemetns from  stack and perform  mathematical operation
#       PUSH result of that operation back to stack array
#     END IF
#   END LOOP
#   RETURN stack at index 0
# END METHOD


# 3. Initial Solution

class RPNCalculator
  # Define your methods, here!
  def evaluate(expression)
    exp_array = expression.split(" ")
    return expression.to_i if exp_array.size == 1
    stack = []
    exp_array.each do |item|
      if item.match(/[0-9]/)
        stack.push(item)
      else
        temp = stack.pop(2).map!{ |item| item.to_i}
        case item
          when "+" then expression = temp[0] + temp[1]
          when "-" then expression = temp[0] - temp[1]
          when "*" then expression = temp[0] * temp[1]
        end
        stack.push(expression)
      end
    end
    stack[0]
  end

end



# 4. Refactored Solution
# class RPNCalculator

#   def evaluate(expression)
#     exp_array = expression.split(" ")
#     return expression.to_i if exp_array.size == 1
#     stack = []
#     exp_array.each do |item|
#       if item.match(/[0-9]/)
#         stack.push(item)
#       else
#         values = stack.pop(2).map!{ |item| item.to_i}
#         stack.push(math_operations(values[0], values[1], item))
#       end
#     end
#     stack[0]
#   end

#   private
#   def math_operations(a, b, operator)
#     case operator
#       when "+" then a + b
#       when "-" then a - b
#       when "*" then a * b
#     end
#   end

# end

class RPNCalculator

  def evaluate(expression)
    exp_array = expression.split(" ")
    return expression.to_i if exp_array.size == 1
    stack = []
    exp_array.each do |item|
      if item.match(/[0-9]/)
        stack.push(item.to_i)
      else
        values = stack.pop(2)
        stack.push(values[0].send(item, values[1]))
      end
    end
    stack[0]
  end

end










# 1. DRIVER TESTS GO BELOW THIS LINE
calc = RPNCalculator.new()
puts calc.evaluate('70 10 4 + 5 * -') == 0
puts calc.evaluate('-1 -1 +') == -2
puts calc.evaluate('20 10 5 4 + * -') == -70




# 5. Reflection
# At first I thought that it is going to be difficult to solve it, Implement a Reverse Polish Notation calculator sounded seriously.
# It wasn't easy, but the key was really  understanding how  Reverse Polish Notation works and then writing accurate pseudocode.
# In this exercise I learnt how usefull is writing instructions before actual coding, it  makes coding so much easier.