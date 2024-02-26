#!/bin/ruby

require 'json'
require 'stringio'



#
# Complete the 'commonSubstring' function below.
#
# The function accepts following parameters:
#  1. STRING_ARRAY a
#  2. STRING_ARRAY b
#

def commonSubstring(a, b)

  a.reduce { |result, string|
    result = result.chars & string.chars
    if result.empty?
      puts "NO"
    else
      puts "YES"
    end
  }

  b.reduce { |result, string|
    result = result.chars & string.chars
    if result.empty?
      puts "NO"
    else
      puts "YES"
    end
  }
end

a_count = gets.strip.to_i


a = Array.new(a_count)

a_count.times do |i|
    a_item = gets.chomp

    a[i] = a_item
end

b_count = gets.strip.to_i

b = Array.new(b_count)

b_count.times do |i|
    b_item = gets.chomp

    b[i] = b_item
end

commonSubstring a, b
