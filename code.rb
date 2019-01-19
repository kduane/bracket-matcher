#YOUR CODE GOES HERE
require 'pry'
def bracket_matched?(string)

  brackets =  ['{', '}', '[', ']', '(', ')']
  stack = []

  string.chars do |char|

    if brackets.include?(char)
      stack << char
    end
  end

  until stack.empty?

    char1 = stack.pop
    char2 = stack.pop

    return true if char1 == '{' && char2 == '}' || char2 == '{' && char1 == '}'
    return true if char1 == '[' && char2 == ']' || char2 == '[' && char1 == ']'
    return true if char1 == '(' && char2 == ')' || char2 == '(' && char1 == ')'

  end

  return false
end


puts bracket_matched?("Hi! What is your name again (I forgot)?")
puts bracket_matched?("Hi! What is (your name again? I forgot")
