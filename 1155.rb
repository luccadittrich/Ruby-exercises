x = 0
count = 0

100.times do
  count += 1
  x += (1.0/count)
end

puts format('%.2f', x)
