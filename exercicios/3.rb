media = 0
notas = []

4.times do
  puts "numero: "
  notas << gets.chomp.to_f
end

notas.each do |n|
  media += n * peso
end

puts media / 10
