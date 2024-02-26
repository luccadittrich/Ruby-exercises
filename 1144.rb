ages = 0.0
ages_count = 0
loop do
  age = gets.chomp.to_i
  break if age.negative?
  ages += age
  ages_count += 1
end

puts format('%.2f', ages.floor(2) / ages_count)
