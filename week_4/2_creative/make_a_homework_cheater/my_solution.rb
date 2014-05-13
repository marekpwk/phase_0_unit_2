# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: method will take title, topic, date, thesis_statment, pronoun
# Output: method will return formatted string
# Steps:
# DEF method essay_writer which will take following arguments :  title, topic, date, thesis_statment, pronoun
# IF pronoun = male
#   pronoun_new = "His"
# ELSE
#   pronoun_new = "Her"
# END IF
# RETURN following string title topic + was an important personn in + year. pronoun_new did a lot. I want to learn about pronoun_new more.
# + thesis_statment + first part of title+"'s" contribution is important.

# 3. Initial Solution
def essay_writer(title, topic, date, thesis_statment, pronoun)
 pronoun == "male" ? pronouns = ["He", "him"] : pronouns = ["She", "her"]
  "#{title}! #{topic} was an imporant person in #{date}. #{pronouns[0]} did a lot. I want to learn more about #{pronouns[1]}.
  #{thesis_statment} #{topic.split[1]} contribution is important."
end


# 4. Refactored Solution
def essay_writer(title, name, date, thesis_statment, pronoun)
  if pronoun == "male"
    pronouns = ["He", "him"]
  else
    pronouns = ["She", "her"]
  end
  "#{title}! #{name} was an imporant person in #{date}. #{pronouns[0]} did a lot. I want to learn more about #{pronouns[1]}.
  #{thesis_statment} #{name.split[1]} contribution is important."
end







# 1. DRIVER TESTS GO BELOW THIS LINE
puts essay_writer("The Explorer",
                 "Christopher Columbus",
                  1492,
                  "His voyages resulted in the discovery of America (from a European point of view).",
                  "male")

puts essay_writer("Theoretical physicist",
                  "Albert Einstein",
                   1921,
                   "He received the Nobel Prize in Physics for his services to theoretical physics, and especially for his discovery of the law of the photoelectric effect",
                   "male")

puts essay_writer("Polish scientist",
                  "Marie Curie",
                  1911,
                  "She was awarded a second nobel prize in Chemistry for the discovery of actinium and further studies on radium and polonium.",
                  "female")
# 5. Reflection


