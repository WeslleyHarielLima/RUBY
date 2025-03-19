class Pessoa 
 def initialize(nome)
  @nome = nome
 end

 def mostrar_nome
  puts "Meu nome é #{@nome}"
 end

end


puts "Digite o seu nome:"
nome = gets.chomp

pessoa = Pessoa.new(nome)
pessoa.mostrar_nome