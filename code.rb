#YOUR CODE GOES HERE
require 'pry'
def bracket_matched?(string)
  return false if string.length.odd?
  return false if string =~ /[^\[\]\(\)\{\}]/

  pairs = { '{' => '}', '[' => ']', '(' => ')' }

  stack = []
  string.chars do |bracket|
    if expectation = pairs[bracket]
      stack << expectation
    else
      return false unless stack.pop == bracket
    end
  end

  stack.empty?
end

binding.pry
