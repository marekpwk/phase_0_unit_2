# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


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
    def validate ()
      sum = []
        array = @number.to_s.split("").reverse
        # puts array.inspect
       array.each_with_index do |item, index|
            if index % 2 == 0
              # puts "item #{item}"
              sum << (item.to_i).to_s
              # puts sum
            else
              # puts "item to double #{item.to_i*2}"
              sum << (item.to_i * 2).to_s
              # sum.flatten!()
              # puts sum.inspect()
            end
        end
         puts sum.inspect()
       sum.map! {|item|  item.split("") if item.size > 1 }#.flatten! #.map!{ |num| num.to_i }
      # sum.flatten!() #map!{|item| item.to_i}
      puts sum.inspect
    end

end

credit = CreditCard.new(4563960122001999)
 credit.validate()

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection
