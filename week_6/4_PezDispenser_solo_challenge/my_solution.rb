require 'test/unit'
# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# 2. Pseudocode
# INIT PezDispenser with an array of flavors
# DEF method pez_count which returns size of an array of pez
# DEF method add_pez which takes a pez as an argument and adds it to flavors array
# DEF method all_pez which returns array of flavors
# DEF method get_pez which removes last pez from the array


# 3. Initial Solution

class PezDispenser

  def initialize(flavors)
    @flavors = flavors
  end

  def add_pez(pez)
    @flavors << pez
  end

  def pez_count
    @flavors.count
  end

  def all_pez
    @flavors
  end

  def get_pez
    @flavors.pop
  end

end



# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE

# flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
# super_mario = PezDispenser.new(flavors)
# puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
# puts "Here's a look inside the dispenser:"
# puts super_mario.see_all_pez
# puts "Adding a purple pez."
# super_mario.add_pez("purple")   # mmmmm, purple flavor
# puts "Now you have #{super_mario.pez_count} pez!"
# puts "Oh, you want one do you?"
# puts "The pez flavor you got is: #{super_mario.get_pez}"
# puts "Now you have #{super_mario.pez_count} pez!"




# 5. Reflection
class TestBogglePezDispenser < Test::Unit::TestCase

  def setup
    flavors_array = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
    @test_array = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry)
    @dispenser = PezDispenser.new(flavors_array)
  end

  def test_checks_numbers_of_pez
    assert_equal(@dispenser.pez_count, @test_array.size)
  end

  def test_list_all_pez
    assert_equal(@dispenser.all_pez.sort, @test_array.sort)
  end

  def test_add_pez
    @dispenser.add_pez("purple")
    assert_equal(@dispenser.all_pez.include?("purple"), true)
  end

  def test_checks_numbers_of_pez_after_addig_one_pez
    @dispenser.add_pez("orange")
    assert_equal(@dispenser.pez_count, @test_array.size + 1)
  end

  def test_checks_numbers_of_pez_after_eating_one_pez
    @dispenser.get_pez
    assert_equal(@dispenser.pez_count, @test_array.size - 1)
  end

end

