require_relative './stack'
require 'pry'

# your code here
def balancing_parentheses(str)
  stack = Stack.new
  str.each_char do |c|
    if c == ')'
      if stack.peek == '(' then stack.pop
      else stack.push(c)
      end
    else stack.push(c)
    end
  end
  stack.size
end

binding.pry