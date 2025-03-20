1. Classe JogoAdivinhacao

class JogoAdivinhacao

  #Aqui, uma classe chamada JogoAdivinhacao é definida. A classe é um modelo para o jogo de adivinhação.


2. Método initialize

  def initialize
    @numero_secreto = rand(1..10) # O número secreto é aleatório entre 1 e 10
    @tentativas = 0
  end
  #@tentativas = 0: A variável de instância @tentativas é inicializada com 0, para contar o número de tentativas feitas pelo jogador.
  #O método initialize é o construtor da classe. Ele é executado sempre que uma nova instância de JogoAdivinhacao é criada.
  #@numero_secreto = rand(1..10): A variável de instância @numero_secreto é definida como um número aleatório entre 1 e 10, usando o método rand(1..10).

  3. Método jogar

  def jogar
    puts "Bem-vindo ao Jogo de Adivinhação!"
    puts "Tente adivinhar o número entre 1 e 10."

    #O método jogar inicia a interação com o jogador.

    #Ele imprime uma mensagem de boas-vindas e instrui o jogador a tentar adivinhar o número entre 1 e 10.

    4. Loop de jogo


    loop do
      print "Digite sua tentativa: "
      tentativa = gets.to_i
      @tentativas += 1

      #O loop do cria um loop infinito, que só será interrompido quando o jogador acertar o número.
      #print "Digite sua tentativa: ": Solicita ao jogador que digite a tentativa.
      #tentativa = gets.to_i: O valor digitado pelo jogador é lido com gets, convertido para um número inteiro usando to_i, e armazenado na variável tentativa.
      #@tentativas += 1: A variável @tentativas é incrementada a cada tentativa feita pelo jogador.
5. Condições para verificar a tentativa

      if tentativa < @numero_secreto
        puts "O número é maior que #{tentativa}. Tente novamente!"
      elsif tentativa > @numero_secreto
        puts "O número é menor que #{tentativa}. Tente novamente!"
      else
        puts "Parabéns! Você acertou o número #{@numero_secreto} em #{@tentativas} tentativas."
        break
      end
#Aqui, o código verifica se a tentativa do jogador foi menor, maior ou igual ao número secreto:
#Se tentativa < @numero_secreto, a mensagem informando que o número é maior que a tentativa é exibida.
#Se tentativa > @numero_secreto, a mensagem informando que o número é menor que a tentativa é exibida.
#Caso contrário (ou seja, o jogador acertou), a mensagem de sucesso é exibida, parabenizando o jogador e informando o número de tentativas. O break interrompe o loop, terminando o jogo.
6. Criando uma instância e iniciando o jogo

# Criando uma instância do jogo e iniciando
jogo = JogoAdivinhacao.new
jogo.jogar
