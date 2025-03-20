dia = 'segunda'

case dia
when 'segunda'
  puts 'Início da semana!'
when 'terça'
  puts 'Segundo dia da semana!'
when 'quarta'
  puts 'Estamos na metade da semana!'
when 'quinta'
  puts 'Quase lá, amanhã é sexta!'
when 'sexta'
  puts 'Finalmente sexta-feira!'
when 'sábado', 'domingo'
  puts 'É final de semana, aproveite!'
else
  puts 'Dia inválido!'
end
