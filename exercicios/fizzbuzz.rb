#!/bin/ruby

require 'json'
require 'stringio'



#
# Complete the 'fizzBuzz' function below.
#
# The function accepts INTEGER n as parameter.
#

def fizzBuzz(n)
    # Write your code here
    if n % 3 == 0 && n % 5 == 0
        puts "FizzBuzz"
    elsif n % 3 == 0
        puts "Fizz"
    elsif n % 5 == 0
        puts "Buzz"
    else
        puts n
    end
end
n = gets.strip.to_i
x = 0
n.times do
    x += 1
    fizzBuzz(x)
end
