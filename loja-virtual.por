programa {
  funcao inicio() {
       caso 1:
                    limpa()
                    escreva("--- CATÁLOGO DE PRODUTOS ---\n")
                    escreva("1. Camisa Esportiva (Estoque: ", estoque_prod1, ") - R$ ", preco_prod1)
                    escreva("2. Boné Casual (Estoque: ", estoque_prod2, ") - R$ ", preco_prod2)
                    escreva("3. Tênis de Corrida (Estoque: ", estoque_prod3, ") - R$ ", preco_prod3)

                    escreva("\nEscolha o produto que deseja adicionar: ")
                    leia(opcao_crud)

                    escreva("Digite a quantidade desejada: ")
                    leia(quantidade_temp)

                    se (opcao_crud == 1)
                    {
                        se (quantidade_temp > 0 e quantidade_temp <= estoque_prod1)
                        {
                            qtd_carrinho_prod1 = qtd_carrinho_prod1 + quantidade_temp
                            estoque_prod1 = estoque_prod1 - quantidade_temp
                            escreva("Item adicionado ao carrinho com sucesso!")
                        } senao {
                            escreva("Quantidade inválida ou acima do estoque disponível!")
                        }
  }
}
