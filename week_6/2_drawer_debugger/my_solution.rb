# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].


# 2. Original Code

class Drawer

  attr_reader :contents

  # Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.last) #what is `#pop` doing?
    puts "Left in the drawer #{contents.inspect}"
    contents.delete(item)
  end

  def dump  # what should this method return?
    puts "Your drawer is empty."
    @contents.clear

  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
    @contents
  end

end

class Silverware
  attr_reader :type

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean
    @clean
  end

  def clean_silverware
    @clean = true
  end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

fork = silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
puts removed_knife.type
removed_knife.clean_silverware
silverware_drawer.view_contents

silverware_drawer.dump
silverware_drawer.view_contents

fork.eat

puts fork.clean_silverware

# DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end



drawer = Drawer.new
knife = Silverware.new("knife")
drawer.add_item(knife)

assert{ drawer.contents.include?(knife) == true }

drawer.add_item(Silverware.new("fork"))
drawer.add_item(Silverware.new("spoon"))

assert{ drawer.contents.last.type == "spoon" }

drawer.remove_item
assert{ drawer.contents.last.type != "spoon" }

knife.eat
assert{ knife.clean == false }



# 5. Reflection