
         senao se (opcao_crud == 2)
                    {
                        se (quantidade_temp > 0 e quantidade_temp <= estoque_prod2)
                        {
                            qtd_carrinho_prod2 = qtd_carrinho_prod2 + quantidade_temp
                            estoque_prod2 = estoque_prod2 - quantidade_temp
                            escreva("Item adicionado ao carrinho com sucesso!")
                        } senao {
                            escreva("Quantidade inválida ou acima do estoque disponível!")
                        }

  }
}
