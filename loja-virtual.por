          senao {
                        escreva("Produto inválido!")
                    }
                    escreva("\nPressione ENTER para voltar ao menu...")
                    leia(tecla_pausa)
                    pare

                caso 2:
                    limpa()
                    escreva("--- MEU CARRINHO DE COMPRAS ---\n")
                    se (qtd_carrinho_prod1 == 0 e qtd_carrinho_prod2 == 0 e qtd_carrinho_prod3 == 0)
                    {
                        escreva("Seu carrinho está vazio.\n")
                    } senao
                    {
                        se (qtd_carrinho_prod1 > 0)
                        {
                            escreva("- ", qtd_carrinho_prod1, "x Camisa Esportiva (R$ ", (qtd_carrinho_prod1 * preco_prod1), ")\n")
                        }
                        se (qtd_carrinho_prod2 > 0)
                        {
                            escreva("- ", qtd_carrinho_prod2, "x Boné Casual (R$ ", (qtd_carrinho_prod2 * preco_prod2), ")\n")mn,
                        }
                        se (qtd_carrinho_prod3 > 0)
                        {
                            escreva("- ", qtd_carrinho_prod3, "x Tênis de Corrida (R$ ", (qtd_carrinho_prod3 * preco_prod3), ")\n")
                        }



    

