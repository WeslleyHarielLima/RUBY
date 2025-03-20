puts 'Digite primeiro numero'
numero1 = gets.chomp.to_i

puts 'Digite o segundo numero'
numero2 = gets.chomp.to_i

soma = numero1 + numero2
mult = numero1 * numero2
div = numero1 / numero2
subt = numero1 - numero2

puts "A soma do #{numero1} e #{numero2} é #{soma}."
puts "A multiplicação do #{numero1} e #{numero2} é #{mult}"
puts "A divisão do #{numero1} e #{numero2} é #{div}"
puts "A subtração do  #{numero1} e #{numero2} é #{subt}"
