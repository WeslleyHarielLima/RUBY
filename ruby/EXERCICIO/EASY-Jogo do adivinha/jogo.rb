class JogoAdivinhacao
  def initialize
    @numero_secreto = rand(1..10) # O número secreto é aleatório entre 1 e 100
    @tentativas = 0
  end

  def jogar
    puts "Bem-vindo ao Jogo de Adivinhação!"
    puts "Tente adivinhar o número entre 1 e 10."

    loop do
      print "Digite sua tentativa: "
      tentativa = gets.to_i
      @tentativas += 1

      if tentativa < @numero_secreto
        puts "O número é maior que #{tentativa}. Tente novamente!"
      elsif tentativa > @numero_secreto
        puts "O número é menor que #{tentativa}. Tente novamente!"
      else
        puts "Parabéns! Você acertou o número #{@numero_secreto} em #{@tentativas} tentativas."
        break
      end
    end
  end
end

# Criando uma instância do jogo e iniciando
jogo = JogoAdivinhacao.new
jogo.jogar
