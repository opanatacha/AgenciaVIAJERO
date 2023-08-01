Algoritmo "AtividadePraticaModuloII"

// Usando Pseudocódigo:
//Usando conceitos de programação estruturada (Vetor),
//criar em pseudocódigo um menu para simular um cadastro
//para uma agência de viagens com as seguintes funções:
//cadastro de cliente e cadastro de destino, criar também
//uma consulta para cada estrutura de dados.

Var
   nomeCliente, cpfCliente, nomeDestino: caractere
   precoDestino: real
   nomesClientes, cpfsClientes, nomesDestinos: vetor[1..100] de caractere
   precosDestinos: vetor[1..100] de real
   i, opcao, qtdClientes, qtdDestinos: inteiro

Inicio
   qtdClientes <- 0


   repita
      escreval("*********  MENU  ********")
      escreval("*   DIGITE UMA OPÇÃO:   *")
      escreval("* 1. CADASTRO CLIENTE   *")
      escreval("* 2. CADASTRO DESTINO   *")
      escreval("* 3. CONSULTAR CLIENTE  *")
      escreval("* 4. CONSULTAR DESTINO  *")
      escreval("* 5. SAIR               *")
      escreval("*******  VIAJERO  *******")
      escreval("")



      leia (opcao)
      escolha opcao
      caso 1
            escreval("Informe o nome completo do cliente:")
            leia(nomeCliente)
            escreval("Informe o CPF do cliente:")
            leia(cpfCliente)

            qtdClientes <- qtdClientes + 1
            
            nomesClientes[qtdClientes] <- nomeCliente
            cpfsClientes[qtdClientes] <- cpfCliente
            
            escreval("Cliente cadastrado!")
            escreval("")
      caso 2
            escreval("Informe o nome do destino:")
            leia(nomeDestino)
            escreval("Informe o valor do destino:")
            leia(precoDestino)

            qtdDestinos <- qtdDestinos + 1

            nomesDestinos[qtdDestinos] <- nomeDestino
            precosDestinos[qtdDestinos] <- precoDestino

            escreval("Destino cadastrado!")
            escreval("")
      caso 3
         se qtdClientes = 0 então
            escreval("Não há clientes cadastrados!")
         senão
            escreval("***** Tabela de Clientes ******")
            para i de 1 ate qtdClientes faca
                escreval("Nome: ", nomesClientes[i])
                escreval("CPF: ", cpfsClientes[i])
                escreval("-------------------------------")
            fimpara
            escreval("*******************************")
         fimse
         escreval("")
      caso 4
         se qtdDestinos = 0 então
            escreval("Não há destinos cadastrados!")
         senão
            escreval("***** Tabela de Destinos ******")
            para i de 1 ate qtdDestinos faca
                escreval("Nome: ", nomesDestinos[i])
                escreval("Preço: ", precosDestinos[i])
                escreval("-------------------------------")
            fimpara
            escreval("*******************************")
         fimse
         escreval("")
      caso 5
         escreval("Fim da execução do programa")
         interrompa
      outrocaso
         Escreva("Opção inválida")
      fimescolha
   ate opcao = 5


Fimalgoritmo