# 5) Em épocas de pouco dinheiro, os comerciantes estão procurando
# aumentar suas vendas oferecendo desconto.
# Faça um algoritmo que possa receber um valor de um produto e
# que escreva o novo valor tendo em vista que o desconto foi de 9%.

desconto = 9

preço = 100.0
valor_do_desconto = (preço / 100) * desconto
subtotal = preço - valor_do_desconto


puts "valor: R$ #{preço}"
puts "desconto: R$ #{valor_do_desconto}"
puts '------------------------'
puts "subtotal: R$ #{preço - valor_do_desconto}"
