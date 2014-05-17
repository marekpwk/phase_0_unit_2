# # U2.W4: Cipher Challenge


# # I worked on this challenge with: .



# # 1. Solution
# # Write your comments on what each thing is doing.
# # If you have difficulty, go into IRB and play with the methods.



# def north_korean_cipher(coded_message)
#   input = coded_message.downcase.split("") # Turning every letter into a lower case letter and then splitting it into array
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",   # An array would be beeter structure, we can automate the shiffting of the letters
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # iterating over each input character
#     found_match = false  #when false the same character will be added to the solution
#     cipher.each_key do |y| # iterating thruthe keys of cipher hash
#       if x == y  #if current character is equal to a hash key
#         # puts "I am comparing x and y. X is #{x} and Y is #{y}."
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  #it will end the loop once it finds its match
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #If it matach one of these characters it will add a space
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # turns a range into an array and then checks if that array includes the input
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match #If there is no match then add the character to the solution
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")

#   if decoded_sentence.match(/\d+/) #Finding all the didgits
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #Replace and divide by 100
#   end
#   return decoded_sentence # it sreturning the string
# end

# # Your Refactored Solution





# # Driver Code:
# p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# # Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
# p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
# p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
# p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
# p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"

# p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# Your Refactored Solution
# Your Refactored Solution
# Your Refactored Solution
# Your Refactored Solution

# Your Refactored Solution
def shift_letter(number, letter)
  alphabet = ("a".."z").to_a
  if alphabet.index(letter).between?(0,3)
    return alphabet[alphabet.index(letter)+(26-number)]
  else
    return alphabet[alphabet.index(letter)-number]
  end
end

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Turning every letter into a lower case letter and then splitting it into array
  decoded_sentence = []
  input.each do |x| # iterating over each input character
    found_match = false  #when false the same character will be added to the solution
    if ("a".."z").include?(x) #if current character is equal to a hash key
      letter = shift_letter(4,x)
      decoded_sentence << letter
      found_match = true
    elsif x.match(/[@\#\$\%\^\&\*]/)
      decoded_sentence << " "
      found_match = true
    end
    if not found_match  #If there is no match then add the character to the solution
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")

    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #Replace and divide by 100

  return decoded_sentence # it sreturning the string
end


# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!"
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"

p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

def shift_letter(number, letter)
  alphabet = ("a".."z").to_a
  if alphabet.index(letter).between?(0,number-1)
    return alphabet[alphabet.index(letter)+(26-number)]
  else
    return alphabet[alphabet.index(letter)-number]
  end
end

puts shift_letter(7,"a")