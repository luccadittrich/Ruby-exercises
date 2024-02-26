puts 'media 1:'
a = gets.chomp.to_i

puts 'media 2:'
b = gets.chomp.to_i

puts 'media 3:'
c = gets.chomp.to_i

puts 'media 4:'
d = gets.chomp.to_i

a = (a * 1)
b = (b * 2)
c = (c * 3)
d = (d * 4)

peso = 1 + 2 + 3 + 4

total = (a + b + c + d) / peso

puts total
