def narcissistic?(value)

  array = value.to_s.split('').to_a
  # puts array

  digits = value.digits.size
  puts digits

  # value.digits.size.times do |a|
  #   puts a
  # end
  sum = 0
  array.each do |a|
    a = a.to_i ** digits
    sum += a
    puts "#{sum} += #{a.to_i}**#{digits}"

  end

  return true if sum == value
  false
end
