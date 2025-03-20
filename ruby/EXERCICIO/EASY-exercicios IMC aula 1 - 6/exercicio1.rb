class Pessoa
  attr_accessor :nome, :idade, :peso, :altura, :imc, :classificacao_imc

  def initialize(nome, idade, peso, altura)
    @nome = nome
    @idade = idade.to_i
    @peso = peso.to_f
    @altura = altura.to_f / 100 # Convertendo a altura de cm para metros
  end

  # Método para calcular o IMC
  def calcular_imc
    @imc = (@peso / (@altura * @altura)).round(2) # Cálculo do IMC
  end

  # Método para classificar o IMC
  def classificar_imc
    @classificacao_imc = if @imc < 18.5
                           'Abaixo do peso'
                         elsif @imc >= 18.5 && @imc < 25.0
                           'Peso normal'
                         elsif @imc >= 25.0 && @imc < 30.0
                           'Sobrepeso'
                         elsif @imc >= 30.0 && @imc < 35.0
                           'Obesidade grau I'
                         elsif @imc >= 35.0 && @imc < 40.0
                           'Obesidade grau II (severa)'
                         else
                           'Obesidade grau III (mórbida)'
                         end
  end
end

# Entradas do usuário
puts 'DIGITE SEU NOME:'
nome = gets.chomp

puts 'DIGITE SUA IDADE:'
idade = gets.chomp

puts 'DIGITE SEU PESO (em kg):'
peso = gets.chomp.to_f

puts 'DIGITE SUA ALTURA (em cm):'
altura = gets.chomp.to_f

pessoa = Pessoa.new(nome, idade, peso, altura)

# Calcular o IMC e classificar
pessoa.calcular_imc

# Exibindo os resultados

puts "Seu nome é #{pessoa.nome}, tem #{pessoa.idade} anos, pesa #{pessoa.peso} quilos, tem #{pessoa.altura * 100} cm de altura e tem IMC de #{pessoa.imc} e está #{pessoa.classificar_imc}."
