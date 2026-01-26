//
//  main.swift
//  coleções + Estrutura de Repetição
//
//  Created by Wallace Pereira Ferreira on 25/01/26.
//

import Foundation

//MARK: Coleções -> tipagens que armazenam nenhum ou varios valores

//MARK: Ponto importante
// Uma tipagem simples, ela armazena apenas um unico valor!! Já um dicionario/array podem armazenar nenhum ou muitooos valores!!!

//MARK: - Array -> lista de valores de uma devida tipagem

// Criação de um array:
// var listaNome: -> colocamos a nossa tipagem sempre estre os colchetes [Tipo da tipagem]
// Quando trabalhamos com array, o valor SEMPRE deve estar entre colchetes = ["Gabriel", "Fernando", "Gustavo", "Marcello"]
// Qual a tipagem que um array pode ter? QUALQUER TIPAGEM!!!!
// Quantos valores pode conter em um array? NÃO TEMOS LIMITE!!!

// Caracteristicas de um array:
// Um array trabalha de forma ORDENADA!!!
// Suas posições não se alteram
// Por trabalhar de forma ordenada, o array tem algo que chamamos de INDEX, que nada mais é que suas posições
// Na programação a primeira posição não é o 1 e sim o 0!!

//                                0         1        2          3       4         5         6
var diasDaSemana: [String] = ["Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado", "Domingo"]

let nome: String = "Meu nome é Caio"
var listaNotas: [Double] = [10, 5.5, 9.8, 3, 2, 10, 8.5]
let livrosQueLi: [String] = ["Diario de um banana", "Diario de um banana 2"]
var listaNomes: [String] = ["Gabriel", "Fernando", "Gustavo", "Marcello"]
var listaVazia: [Int] = []


// Para acessar um valor de um array utilizamos o INDEX DO ARRAY

var dia: String = diasDaSemana[5]
//print("Hoje é: \(dia)")

var nota: Double = listaNotas[1]
//print("Sua nota é: \(nota)")

// Verificar quantos ITENS EXISTE EM UM ARRAY
let quantidadeTotalDeAlunos: Int = listaNomes.count
//print(quantidadeTotalDeAlunos)

// Verificar se a lista é vazia
let eVazio: Bool = listaVazia.isEmpty
//print(eVazio)
//print(listaNomes.isEmpty)

// Para adicionar um novo item no seu array utilizamos a propriedade append
// OBS: Para adicionar um item no seu array ele DEVE SER DA MESMA TIPAGEM DO ARRAY!!!!!
// Toda a vez que utilizamos o append, o novo elemento é adicionado sempre ao final da lista

listaNomes.append("Gabriel")
listaNomes.append("Felipe")
listaNomes.append("Caio")
//print(listaNomes)

//listaNotas.append(1.5)
//print(listaNotas)

// Para deletar um elemento do array utilizamos a propriedade remove, e temos 4 formas SIMPLES:

// Remove o ultimo item do array
//listaNomes.removeLast()
//print(listaNomes)

// Remove o primeiro item do array
//listaNomes.removeFirst()
//print(listaNomes)

// Remove uma posição ESPECIFICA do array
//listaNomes.remove(at: 5)
//print(listaNomes)

// Remove TODOS os itens do array
//listaNomes.removeAll()
//print(listaNomes)

// MARK: - Dicionario -> chave e valor
// O dicionario trabalha como LISTA, porem diferente do array ele NÃO É ORDENADO!!
// O dicionario NÃO IMPORTA COM A ORDEM!
// A referencia do array é o index(posição), já o dicionário é a chave!

// Caracteristicas de um dicionario:
// Ele trabalha com chave e valor
// Para criar um dicionario colocamos entre colchetes sua chave e sua tipagem(valor do dicionario) Ex: [chave/key: valor/value]
// O dicionario pode ter qualquer tipagem de valor, podendo ser double, float, int, string, bool, etc...
// Toda a vez que vocês forem utilizar um dicionario sempre deve utilizar os dois pontos para separar oque é chave de valor
// Sua chave, jamais se repete!!

//            key     value      key   value   key        value  key       value
var altura: [String: Double] = ["Gabriel": 1.82, "Marcello": 1.75, "Caio": 1.70]
//print(altura)


// para adicionar/atualizar um item do dicionario utilizamos a propriedade updateValue
// quando utilizamos o updateValue ele SEMPRE vai validar se a chave que você informou já existe,
// se sim, atualiza o valor dela, caso contrario ele cria um novo item!

altura.updateValue(1.90, forKey: "Gustavo")
altura.updateValue(1.90, forKey: "Gustavo2")

//print(altura)


// Para acessar um valor de um dicionario, utilizamos sua chave
let minhaAltura: Double = altura["Gabriel10"] ?? 0
//print(minhaAltura)

// Remover um item de um dicionario

// remover todos os itens
altura.removeAll()

// Remover chave especifica
altura.removeValue(forKey: "Gabriel10")
print(altura)

//MARK: - Exercicios Array e Dicionário

//Exercício 1: Arrays
//Crie um array contendo os nomes de três aplicativos iOS populares. Imprima o nome do segundo aplicativo na lista.

//Exercício 2: Dicionários
//Crie um dicionário com os nomes de três pessoas como chaves e seus sobrenomes como valores. Imprima um de seus valores.

//Exercício 3: Manipulação de Arrays
//Crie um array contendo 10 números inteiros. Adicione um número inteiro à lista e, em seguida, remova o segundo elemento. Imprima array.

//Exercício 4: Acesso a Valores
//Crie um dicionário com os nomes de três frutas e a quantidade que você possui de cada uma. Imprima quantas unidades de uma fruta de sua escolha você possui.




//MARK: Estruturas de Repetição - 3 formas

// Estruturas de repetição são usadas para executar um bloco de código repetidamente até que uma condição específica seja atendida. Isso é útil para tarefas como processar coleções de dados ou repetir operações até que uma condição de parada seja alcançada.


// MARK: While (Enquanto)
// A estrutura de repetição 'while' executa um conjunto de instruções repetidamente, enquanto a condição fornecida é verdadeira. É ideal quando o número de iterações não é conhecido antes do loop iniciar.

// MARK: Diferença entre o While e Repeat
// No while ele verifique primeiro antes de executar qualquer coisa!
// No repeat ele EXECUTA PRIMEIRO e DEPOIS ele verifica se tem que repetir ou não

// O While a primeira coisa que ele faz é verificar se a condição que está entre a palavra while e a chave é verdadeira. Se a condição for verdadeira ele entra no bloco de codigo e depois volta a repetir. Ele encerra a repetição apenas no momento em que a validação se torna falsa


var idade = 1

while idade <= 18 {
    print("A idade atual é de: \(idade)")
    idade = idade + 1
    //    idade += 1 // Outra forma
}

print("Final da execução")


// MARK: Repeat-While
// O 'repeat-while' é uma variação do loop 'while' que executa o bloco de código uma vez antes de verificar a condição no final do bloco.
// O repeat é igual o While, porem ele apriori executa e DEPOIS verifica se tem que repetir de novo

var indexRepeat = 120

repeat {
    print("Valor: \(indexRepeat)")
    indexRepeat = indexRepeat - 1
//        indexRepeat -= 1
} while indexRepeat >= 110
            
            
// MARK: For-In
// O loop 'for-in' itera sobre uma sequência, como um intervalo de números, e executa um conjunto de instruções para cada elemento na sequência.
            
            
for value in 100...105 {
    print(value)
}

// MARK: - Uso de For-In com Arrays/ Dicionario
// Arrays em Swift são coleções ordenadas de elementos. O loop 'for-in' permite iterar sobre cada elemento de um array de maneira simples e direta.

var listaAnotacoes: [String] = ["Abastecer Carro", "Colocar ração para o Zeus", "Responder os alunos", "Pagar conta de energia"]


for anotacao in listaAnotacoes {
    print("Minha anotação é: \(anotacao)")
}


let listaAlunos: [String: Double] = ["Gabriel 1": 8.2, "Gabriel 2": 7.5, "Edu": 9, "Juliano": 6]

var listaNomeAlunosAprovados: [String] = []

for aluno in listaAlunos {
//     Nota maior ou igual a 7
    if aluno.value >= 7 {
        listaNomeAlunosAprovados.append(aluno.key)
    }
}
    
print(listaNomeAlunosAprovados)
            
// MARK: Usando Índices e Elementos no Array
// Usando a função 'enumerated()' para acessar tanto o índice quanto o valor de cada elemento do array.
// 'enumerated()' transforma o array em uma sequência de pares (índice, valor).


for (index, anotacao) in listaAnotacoes.enumerated() {
    print("A posição é: \(index) e sua anotação é: \(anotacao)")
}

for (index, anotacao) in listaAnotacoes.enumerated() {
    if anotacao == "Abastecer Carro" {
        listaAnotacoes.remove(at: index)
        listaAnotacoes.append("Conferir pneus")
        
        // utilizamos o break no caso de existir apenas um unico item na lista. Com isso quando entrar na validação ele não precisa mais repetir para buscar outro valor
        // pois sabemos que ele não vai encontrar. Sendo assim, o break anula o loop
        break
    }
}

print(listaAnotacoes)

listaAnotacoes.reverse()
print(listaAnotacoes)


// MARK: Exercício 1: Crie uma lista vazia e depois adicione 3 itens. Por fim, utilize o for para printar esses elementos
var lista: [String] = []

lista.append("Maçã")
lista.append("Banana")
lista.append("Uva")

for item in lista {
    print(item)
}
// MARK: Exercício 2: Crie um dicionario String:String com 3 itens. Imprima utilizando o for a chave de cada um deles.
var dicionario: [String: String] = ["nome": "Fernanda","cidade": "São Paulo","profissao": "Analista de Dados"]
for chave in dicionario.keys {
    print(chave)
}
// MARK: Exercício 3: Adicionar chave e valor em um dicionário e imprimir ambos utilizando o for print("\(chave): \(valor)")
var dicionario1: [String: String] = [:]


dicionario1["nome"] = "Fernanda"
dicionario1["cidade"] = "São Paulo"
dicionario1["profissao"] = "Analista de Dados"

// Imprimindo chave e valor
for (chave, valor) in dicionario1 {
    print("\(chave): \(valor)")
}

// MARK: Exercício 4: Crie um array com 3 itens. Percorra o array utilizando o for, e realize o print de cada item. Realize o reverso do array que você criou.

var frutas: [String] = ["Maçã", "Banana", "Uva"]

for fruta in frutas {
    print(fruta)
}

let frutasReverso = frutas.reversed()

for fruta in frutasReverso {
    print(fruta)
}

// MARK: Exercício 5: Crie um array de números inteiros. Utilizando o for, percorra o array e soma cada valor. Por fim, imprima o valor total de todos os números

var numeros: [Int] = [10, 20, 30, 40]
var somaTotal = 0

for numero in numeros {
    somaTotal += numero
}

print("Total: \(somaTotal)")


//Você tem uma lista de compras com alguns itens.
//Desafio:
//Crie uma coleção com 5 itens de mercado
//Mostre todos os itens no console
//👉 Objetivo: entender Array e acesso aos elementos.

var listaDeCompras: [String] = ["Arroz", "Feijão", "Leite", "Pão", "Café"]

for item in listaDeCompras {
    print(item)
}


//Você tem uma lista com nomes de alunos.
//Desafio:
//Crie uma coleção com alguns nomes
//Mostre quantos alunos existem na lista
//👉 Objetivo: usar .count.
var alunos: [String] = ["Ana", "Bruno", "Carlos", "Fernanda", "João"]

print("Quantidade de alunos: \(alunos.count)")

//Você tem uma lista de frutas.
//Desafio:
//Verifique se a fruta "banana" existe na lista
//Mostre uma mensagem dizendo se existe ou não
//👉 Objetivo: trabalhar com contains.
var frutas1: [String] = ["maçã", "uva", "banana", "laranja"]

if frutas1.contains("banana") {
    print("A fruta banana existe na lista!")
} else {
    print("A fruta banana não existe na lista!")
}


//Você tem uma lista de tarefas.
//Desafio:
//Adicione uma nova tarefa à lista
//Mostre a lista atualizada
//👉 Objetivo: adicionar elementos em uma coleção.

var tarefas: [String] = ["Estudar Swift", "Fazer exercícios", "Ler um livro"]

tarefas.append("Organizar a casa")

print("Lista atualizada:")
for tarefa in tarefas {
    print(tarefa)
}

//🔁 Desafios Básicos — Estruturas de Repetição


//Você precisa mostrar números de 1 até 10.
//Desafio:
//Use uma estrutura de repetição para mostrar esses números
//👉 Objetivo: entender for.
for numero in 1...10 {
    print(numero)
}

//Você tem uma lista de nomes.
//Desafio:
//Use um laço de repetição para mostrar cada nome
//👉 Objetivo: percorrer um Array com for.
var nomes: [String] = ["Ana", "Bruno", "Carlos", "Fernanda", "João"]

for nome in nomes {
    print(nome)
}

//Você tem uma lista de números.
//Desafio:
//Some todos os números da lista
//Mostre o resultado final
//👉 Objetivo: repetição + lógica simples.

var numeros2: [Int] = [5, 10, 15, 20]
var soma = 0

for numero in numeros2 {
    soma += numero
}

print("Resultado final: \(soma)")

//Você quer mostrar números de 0 até 5.
//Desafio:
//Use uma estrutura de repetição para isso
//👉 Objetivo: entender intervalo (0...5).

for numero in 0...5 {
    print(numero)
}

// Desafios Mistos (Coleções + Repetição)
// Lista de alunos
//Você tem uma lista de alunos com idades.
//Desafio:
//Guarde os nomes em uma coleção
//Use repetição para mostrar cada nome
//👉 Objetivo: unir Array + for.
var alunos2: [String] = ["Ana", "Bruno", "Carlos", "Fernanda", "João"]

for aluno in alunos {
    print(aluno)
}
//Verificando notas
//Você tem uma lista de notas.
//Desafio:
//Use repetição para verificar quais notas são maiores ou iguais a 7
//Mostre apenas essas notas
//👉 Objetivo: for + condição.

var notas: [Double] = [5.5, 7.0, 8.2, 6.9, 9.0, 7.5]

for nota in notas {
    if nota >= 7 {
        print(nota)
    }
}
