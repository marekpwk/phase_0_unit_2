require 'test/unit'
# U2.W6: Create a Car Class from User Stories


# I worked on this challenge [by myself].


# 2. Pseudocode
# class attributes
#   color
#   model
#   speed
#   total_distance
#   drive
#   move
# class methods
#   distance_to_drive(distance)
#   speed
#   turn(directions)
#   set_spped(speed)
#   total_distance
#   stop
#   latest_action


# 3. Initial Solution
class Car
  attr_reader :color, :model, :total_distance, :speed, :last_action, :direction, :actions
  def initialize(color, model)
    @color = color
    @model = model
    @total_distance = 0
    @speed = 0
    @last_action = ""
    @direction = ''
    @actions = []
  end

  def drive(distance, max_speed)
    @speed = set_speed(max_speed)
    @actions << "Set speed to max #{max_speed}"
    @total_distance += distance
    @actions << "Add distance of #{distance}"

  end

  def stop
    @actions << "Stop the car"
    @speed = 0
  end

  def move
    @speed == true
  end

  def turn(direction)
    @actions << "Turn #{direction}"
    @direction = direction
  end

  def last_action
    actions.last
  end

  private

  def set_speed(speed)
    @speed = speed
  end

end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
class TestCar < Test::Unit::TestCase

  def setup
    @my_car = Car.new("blue", "chevy")
  end

  def test_checks_the_car_color
    assert_equal(@my_car.color, "blue")
  end

  def test_checks_the_car_model
    assert_equal(@my_car.model, "chevy")
  end

  def test_drive
    @my_car.drive(0.25, 25)
    assert_equal(@my_car.total_distance, 0.25)
    assert_equal(@my_car.speed, 25)
  end


  def test_stop
    @my_car.stop
    assert_equal(@my_car.move, false)
  end

  def test_turn
    @my_car.turn("left")
    assert_equal(@my_car.last_action, "Turn left")
  end

  def test_drive
    @my_car.drive(1.5, 35)
    assert_equal(@my_car.total_distance, 1.5)
    assert_equal(@my_car.speed, 35)
  end

  def test_actions
      @my_car.turn("left")
    @my_car.drive(1.5, 35)
    assert_equal(@my_car.total_distance, 1.5)
    assert_equal(@my_car.actions, ["Turn left", "Set speed to max 35", "Add distance of 1.5"])
  end

end

# 5. Reflection