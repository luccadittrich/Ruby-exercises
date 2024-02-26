puts 'qual é o numero?'
x = gets.chomp.to_i #5

def imprimir_antes_e_depois(x)
  antes = x - 1 # 4
  depois = x + 1 # 6
  "o numero que vem antes de #{x} é #{antes} e depois é: #{depois}"
end

puts imprimir_antes_e_depois(x)
