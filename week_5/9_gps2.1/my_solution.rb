# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: myself
def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0

  has_fave = false

  my_list.each_key do |k|
    if k == fav_food
       has_fave = true
    end
  end
  if has_fave == false
    raise ArgumentError.new("You can't make that food")
  else
    fav_food_qty = my_list[fav_food]
    if num_of_people % fav_food_qty == 0
      num_of_food = num_of_people / fav_food_qty
      num_of_people = 0
      return "You need to make #{num_of_food} #{fav_food}(s)."
    end
    # else num_of_people % fav_food_qty != 0
    while num_of_people > 0
      food_array = []
      my_list.each do |k, v|
        food_qty = num_of_people / v
        num_of_people = num_of_people % v
        food_array << food_qty
      end
      # end
      return "You need to make #{food_array[0]} pie(s), #{food_array[1]} cake(s), and #{food_array[2]} cookie(s)."
    end
  end
end


# Our Refactored Solution

def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  raise ArgumentError, "You can't make that food" if !my_list.has_key? fav_food
  final_list = {}
  my_list.each_key{|k| final_list[k] = 0}
  final_list[fav_food] = num_of_people / my_list[fav_food]
  return "You need to make #{final_list[fav_food]} #{fav_food}(s)." if num_of_people % my_list[fav_food] == 0
  num_of_people = num_of_people % my_list[fav_food]
  food_to_check = my_list.select { |key, value| value < my_list[fav_food] }
  food_to_check.each do |key, value|
    food_qty = num_of_people / value
    final_list[key] = food_qty
  end
  return "You need to make #{final_list["pie"]} pie(s), #{final_list["cake"]} cake(s), and #{final_list["cookie"]} cookie(s)."
end







#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working.
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)."



#  Reflection



