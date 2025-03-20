CRIAÇÃO 
lista = [1,5,3,"nome",[1,4,7]]
puts lista


INSERÇÃO NA LISTA - OS ITENS EM PUSH ESTAO ENTRE PARÊNTESES()
lista=[]
lista.push("Weslley", "palomeque")
puts lista



PESQUISA DENTRO DA LISTA SE TA COM A CONTAGEM DE POSIÇÕES E COMEÇA NO PRIMEIRO ITEM SENDO O ZERO( 0 )
lista=[]
lista.push("avião","carro","barco")
puts lista[1]



Outro metodo de inserção é usando 2 menores (<<)
lista = []
lista<<"fatima"
puts lista


PARA INSERÇÃO EM POSIÇÃO ESPECIFICA, SE FAZ A CONTAGEM  COMECANDO NO ZERO , DEPOIS ESCOLHE A POSIÇÃO E PASSA O ITEM A SER INSERIDO
lista = []
lista.push("gato","pato","rato")
lista.insert(1,"cachorro")

puts  lista



PARA ACESSAR POSIÇÕES ESPECIFICAS COM LOCALIZAÇÃO CERTA DE TANTO A TANTO, CONTA A POSIÇÃO DE INICIO E FIM 
lista = []
lista.push("gato","pato","rato","avião","carro","barco")

puts  lista[1..4]

PARA DELETAR ITEM ESPECIFICO DA LISTA
lista = [1,5,3,"nome",[1,4,7]]
lista.delete("nome")
puts lista


PARA SABER QUANTOS ITENS TEM NA LISTA UM CONTADOR É O length
lista=[]
lista.push("avião","carro","barco")
puts lista.length


PARA COLOCAR OS ITENS EM ORDEM ALFABETICA
lista=[]
lista.push("avião","carro","barco")
puts lista.sort

 PEGAR O PRIMEIRO O USA UM FIRST E PARA O ULTIMO UM LAST
a=[]
a.push("avião","carro","barco")
 lista.last

 
CASO ESPECIAL 
Linha 1: Cria um array vazio chamado lista.
Linha 3: Adiciona os elementos "Diego" e "João" ao final do array lista usando o método push.
Linha 4: Adiciona o elemento "Maria" ao final do array lista usando o operador <<.
Linha 7: Insere o elemento "Fulano" no índice 0 do array lista usando o método insert.
Linha 8: Insere o elemento "Sicrano" no índice 2 do array lista usando o método insert.
Linha 10: Cria um novo array chamado lista_organizada que contém os elementos de lista ordenados alfabeticamente usando o método sort.
Linha 11: Imprime o primeiro elemento do array lista_organizada usando o método first.
lista = []

lista.push("Diego", "João")
lista << "Maria"

lista.insert(0, "Fulano")
lista.insert(2, "Sicrano")

lista_organizada = lista.sort
puts lista_organizada.first