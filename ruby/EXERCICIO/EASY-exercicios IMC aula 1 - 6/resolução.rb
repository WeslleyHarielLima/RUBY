############################################################## MODELO RESPOSTA ##########################################


#1. Definição da classe Pessoa

class Pessoa
attr_accessor :nome, :idade, :peso, :altura, :imc, :classificacao_imc



#Aqui, estamos criando uma classe chamada Pessoa. Classes são usadas para criar objetos que possuem características (atributos) e comportamentos (métodos).
#attr_accessor é um método do Ruby que cria automaticamente os métodos de leitura e escrita para os atributos passados. Neste caso, nome, idade, peso, altura, imc e classificacao_imc são os atributos da pessoa.


#####2. O método initialize

  def initialize(nome, idade, peso, altura)
    @nome = nome
    @idade = idade.to_i
    @peso = peso.to_f
    @altura = altura.to_f / 100  # Convertendo a altura de cm para metros
  end


  #O método initialize é o construtor da classe. Ele é executado automaticamente quando criamos uma nova instância (objeto) da classe Pessoa.
#Ele recebe os parâmetros nome, idade, peso e altura e os usa para inicializar os atributos da pessoa.
#@nome, @idade, @peso, e @altura são variáveis de instância (ou seja, pertencem ao objeto) e recebem os valores passados para o initialize.
#A altura é convertida de centímetros para metros dividindo por 100 (altura.to_f / 100).


######3. O método calcular_imc

  def calcular_imc
    @imc = (@peso / (@altura * @altura)).round(2)  # Cálculo do IMC
  end


#Este método calcula o Índice de Massa Corporal (IMC) da pessoa.
#O IMC é calculado com a fórmula: peso / (altura²).
#@peso é o peso da pessoa (em kg) e @altura é a altura em metros.
#O resultado do cálculo é arredondado para duas casas decimais com o método round(2).


##########4. O método classificar_imc

def classificar_imc
    if @imc < 18.5
      @classificacao_imc = "Abaixo do peso"
    elsif @imc >= 18.5 && @imc < 25.0
      @classificacao_imc = "Peso normal"
    elsif @imc >= 25.0 && @imc < 30.0
      @classificacao_imc = "Sobrepeso"
    elsif @imc >= 30.0 && @imc < 35.0
      @classificacao_imc = "Obesidade grau I"
    elsif @imc >= 35.0 && @imc < 40.0
      @classificacao_imc = "Obesidade grau II (severa)"
    else
      @classificacao_imc = "Obesidade grau III (mórbida)"
    end
  end


#Este método classifica o IMC calculado. Dependendo do valor do IMC, ele atribui uma classificação à variável @classificacao_imc.
#A classificação é feita com base nos valores padrões da Organização Mundial da Saúde (OMS) para IMC.
#O método utiliza a estrutura de controle if-elsif-else para verificar o valor de @imc e atribuir a classificação correspondente.


######5. Entradas do usuário


puts "DIGITE SEU NOME:"
nome = gets.chomp

puts "DIGITE SUA IDADE:"
idade = gets.chomp

puts "DIGITE SEU PESO (em kg):"
peso = gets.chomp.to_f   

puts "DIGITE SUA ALTURA (em cm):"
altura = gets.chomp.to_f   


##Aqui, o código solicita que o usuário digite seu nome, idade, peso e altura.
##O método gets.chomp captura a entrada do usuário. O chomp é usado para remover a quebra de linha do final da entrada.
##As entradas de peso e altura são convertidas para números de ponto flutuante (to_f), pois esses valores são necessários para cálculos.

###############6. Criação do objeto pessoa

pessoa = Pessoa.new(nome, idade, peso, altura)

#O código cria um objeto da classe Pessoa com as informações fornecidas pelo usuário (nome, idade, peso e altura).
#Isso chama o método initialize automaticamente, atribuindo os valores aos atributos da pessoa.


#########7. Cálculo do IMC e classificação

pessoa.calcular_imc


#Aqui, o método calcular_imc é chamado para calcular o IMC da pessoa com base nas informações fornecidas.


########38. Exibição dos resultados


puts "Seu nome é #{pessoa.nome}, tem #{pessoa.idade} anos, pesa #{pessoa.peso} quilos, tem #{pessoa.altura * 100} cm de altura e tem IMC de #{pessoa.imc} e está #{pessoa.classificar_imc}."

###Este código exibe os resultados para o usuário.usando a interpolação de strings (#{}), ele exibe o nome, idade, peso, altura (convertendo de metros de volta para centímetros), o IMC calculado e a classificação do IMC.
###Resumo da relevância dos componentes
#Atributos (nome, idade, peso, altura, etc.): Eles armazenam as informações sobre a pessoa.
#Métodos (initialize, calcular_imc, classificar_imc): Eles definem o comportamento da classe, ou seja, as ações que a pessoa pode realizar (como calcular e classificar o IMC).
#Estruturas de controle (if-elsif-else): Elas são usadas para tomar decisões (no caso, para classificar o IMC da pessoa).
#Entrada e saída (gets.chomp e puts): Elas permitem interagir com o usuário, capturando os dados de entrada e exibindo os resultados.
#Esses componentes juntos formam a lógica do programa e garantem que ele calcule corretamente o IMC e forneça a classificação adequada para o usuário.