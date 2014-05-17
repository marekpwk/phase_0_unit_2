# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].



# 1. First Person's solution I liked
#    What I learned from this solution
# Copy solution here:





# 2. Second Person's solution I liked
#    What I learned from this solution
# Copy solution here:




# 3. My original solution:



# 4. My refactored solution:
class Array
 def pad!(number, option=nil)
    self.length >= number ? self : self.fill(option,self.length, number - self.length)
  end

  def pad(number, option=nil)
    new_array = Array.new(self)
    new_array.length >= number ? new_array : new_array.fill(option,self.length, number - self.length)
  end

end

a = [1,2]


puts a.pad(7,"apple").inspect
puts a.pad!(17,"apple").inspect
# 5. Reflection