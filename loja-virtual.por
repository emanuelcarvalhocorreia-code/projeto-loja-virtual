programa {
  funcao inicio() {
    // ====================== VARIÁVEIS ======================
    inteiro opcao_menu_principal = -1
    inteiro opcao_crud = -1
    inteiro opcao_pagamento = -1
    caractere tecla_pausa = ""
    
    real preco_prod1 = 150.0
    real preco_prod2 = 60.0
    real preco_prod3 = 250.0
    
    inteiro estoque_prod1 = 10
    inteiro estoque_prod2 = 15
    inteiro estoque_prod3 = 8
    
    inteiro qtd_carrinho_prod1 = 0
    inteiro qtd_carrinho_prod2 = 0
    inteiro qtd_carrinho_prod3 = 0
    
    real valor_total_bruto = 0.0
    real valor_desconto = 0.0
    real valor_final = 0.0
    real quantidade_temp = 0.0

  // ====================== MENU PRINCIPAL ======================
  enquanto (opcao_menu_principal != 0)
  {
  limpar()
  escreva("=== BEM-VINDO À NOSSA LOJA VIRTUAL ===\n")
  escreva("---------------------------\n")
  escreva("MENU PRINCIPAL\n")
  escreva("1. Ver Produtos e Adicionar ao Carrinho (CREATE)\n")
  escreva("2. Ver Meus Itens no Carrinho (READ)\n")
  escreva("3. Alterar Quantidade no Carrinho (UPDATE)\n")
  escreva("4. Remover Item do Carrinho (DELETE)\n")
  escreva("0. Finalizar Compra e Ir ao Pagamento\n\n")
  escreva("Escolha uma opção: ")
  leia(opcao_menu_principal)


  escolha (opcao_menu_principal)
  {
  caso 1: // ADICIONAR PRODUTO
      limpar()
      escreva("--- CATÁLOGO DE PRODUTOS ---\n")
      escreva("1. Camisa Esportiva (Estoque: ", estoque_prod1, ") - R$ ", preco_prod1, "\n")
      escreva("2. Boné Casual (Estoque: ", estoque_prod2, ") - R$ ", preco_prod2, "\n")
      escreva("3. Tênis de Corrida (Estoque: ", estoque_prod3, ") - R$ ", preco_prod3, "\n\n")
      escreva("Escolha o produto que deseja adicionar: ")
      leia(opcao_crud)

      escreva("Digite a quantidade desejada: ")
      leia(quantidade_temp)

      se (opcao_crud == 1)
      {
          se (quantidade_temp > 0 e quantidade_temp <= estoque_prod1)
          {
              qtd_carrinho_prod1 = qtd_carrinho_prod1 + quantidade_temp
              estoque_prod1 = estoque_prod1 - quantidade_temp
    escreva("Camisa Esportiva adicionada ao carrinho com sucesso!\n")
  }
senao
{
escreva("Quantidade inválida ou acima do estoque disponível!\n")
}
}
senao se (opcao_crud == 2)
{
    se (quantidade_temp > 0 e quantidade_temp <= estoque_prod2)
    {
        qtd_carrinho_prod2 = qtd_carrinho_prod2 + quantidade_temp
        estoque_prod2 = estoque_prod2 - quantidade_temp
        escreva("Boné Casual adicionado ao carrinho com sucesso!\n")
    }
    senao
    {
        escreva("Quantidade inválida ou acima do estoque disponível!\n")
    }
}
senao se (opcao_crud == 3)
{
    se (quantidade_temp > 0 e quantidade_temp <= estoque_prod3)
    {
        qtd_carrinho_prod3 = qtd_carrinho_prod3 + quantidade_temp
        estoque_prod3 = estoque_prod3 - quantidade_temp
        escreva("Tênis de Corrida adicionado ao carrinho com sucesso!\n")
    }
    senao
    {
        escreva("Quantidade inválida ou acima do estoque disponível!\n")
        }
}
senao
{
escreva("Produto inválido!\n")
    }

    escreva("\nPressione ENTER para voltar ao menu...")
    leia(tecla_pausa)
    pare

caso 2: // VER CARRINHO
    limpar()
    escreva("--- MEU CARRINHO DE COMPRAS ---\n")
    escreva("Valor Total Bruto: R$ ", valor_total_bruto, "\n")
    escreva("---------------------------\n")

    se (qtd_carrinho_prod1 > 0)
    {
        escreva("- ", qtd_carrinho_prod1, "x Camisa Esportiva = R$ ", qtd_carrinho_prod1 * preco_prod1, "\n")
    }
    senao se (qtd_carrinho_prod2 > 0)
    {
        escreva("- ", qtd_carrinho_prod2, "x Boné Casual = R$ ", qtd_carrinho_prod2 * preco_prod2, "\n")
          }
          senao se (qtd_carrinho_prod3 > 0)
          {
              escreva("- ", qtd_carrinho_prod3, "x Tênis de Corrida = R$ ", qtd_carrinho_prod3 * preco_prod3, "\n")
          }
          senao
          {
              escreva("\nSeu carrinho está vazio.\n")
          }

          escreva("\nPressione ENTER para voltar ao menu...")
          leia(tecla_pausa)
      pare

  caso 3: // ALTERAR QUANTIDADE (CORRIGIDO)
      limpar()
      escreva("--- ALTERAR QUANTIDADE NO CARRINHO ---\n")
      escreva("1. Camisa Esportiva (No carrinho: ", qtd_carrinho_prod1, ")\n")
      escreva("2. Boné Casual (No carrinho: ", qtd_carrinho_prod2, ")\n")
      escreva("3. Tênis de Corrida (No carrinho: ", qtd_carrinho_prod3, ")\n\n")
      escreva("Escolha o item para alterar a quantidade: ")
      leia(opcao_crud)

      escreva("Digite a NOVA quantidade: ")
      leia(quantidade_temp)

se (opcao_crud == 1)
{
  se (quantidade_temp >= 0 e quantidade_temp <= estoque_prod1)
  {
      estoque_prod1 = estoque_prod1 + qtd_carrinho_prod1 - quantidade_temp
      qtd_carrinho_prod1 = quantidade_temp
      escreva("Quantidade atualizada com sucesso!\n")
  }
  senao
  {
      escreva("Quantidade inválida ou acima do estoque disponível!\n")
  }
}
senao se (opcao_crud == 2)
{
  se (quantidade_temp >= 0 e quantidade_temp <= estoque_prod2)
  {
      estoque_prod2 = estoque_prod2 + qtd_carrinho_prod2 - quantidade_temp
      qtd_carrinho_prod2 = quantidade_temp
      escreva("Quantidade atualizada com sucesso!\n")
  }
  senao
  {
      escreva("Quantidade inválida ou acima do estoque disponível!\n")
  }
}
senao se (opcao_crud == 3)
{
  se (quantidade_temp >= 0 e quantidade_temp <= estoque_prod3)
  {
      estoque_prod3 = estoque_prod3 + qtd_carrinho_prod3 - quantidade_temp
      qtd_carrinho_prod3 = quantidade_temp
      escreva("Quantidade atualizada com sucesso!\n")
  }
  senao
  {
      escreva("Quantidade inválida ou acima do estoque disponível!\n")
  }
}
  senao
  {
      escreva("Opção inválida!\n")
  }

  escreva("\nPressione ENTER para voltar ao menu...")
  leia(tecla_pausa)
  pare

caso 4: // REMOVER ITEM
limpar()
escreva("--- REMOVER ITEM DO CARRINHO ---\n")
escreva("1. Camisa Esportiva (No carrinho: ", qtd_carrinho_prod1, ")\n")
    escreva("2. Boné Casual (No carrinho: ", qtd_carrinho_prod2, ")\n")
    escreva("3. Tênis de Corrida (No carrinho: ", qtd_carrinho_prod3, ")\n\n")
    escreva("Escolha o item que deseja remover: ")
    leia(opcao_crud)

    se (opcao_crud == 1)
    {
        estoque_prod1 = estoque_prod1 + qtd_carrinho_prod1
        qtd_carrinho_prod1 = 0
        escreva("Camisa Esportiva removida do carrinho!\n")
    }
    senao se (opcao_crud == 2)
    {
        estoque_prod2 = estoque_prod2 + qtd_carrinho_prod2
        qtd_carrinho_prod2 = 0
        escreva("Boné Casual removido do carrinho!\n")
    }
    senao se (opcao_crud == 3)
    {
        estoque_prod3 = estoque_prod3 + qtd_carrinho_prod3
        qtd_carrinho_prod3 = 0
        escreva("Tênis de Corrida removido do carrinho!\n")
    }
    senao
    {
        escreva("Opção inválida!\n")
    }

    escreva("\nPressione ENTER para voltar ao menu...")
    leia(tecla_pausa)
    pare

caso 0:
    escreva("Saindo da loja... Obrigado por comprar conosco!")
    pare
}
}

// ====================== PAGAMENTO ======================
  limpar()
  escreva("--- FORMA DE PAGAMENTO ---\n")
  escreva("1. Pagamento via PIX (10% de desconto)\n")
  escreva("2. Cartão de Crédito (Valor normal)\n\n")
  escreva("Escolha a forma de pagamento: ")
  leia(opcao_pagamento)

  se (opcao_pagamento == 1)
  {
      valor_desconto = valor_total_bruto * 0.10
      valor_final = valor_total_bruto - valor_desconto
  }
  senao se (opcao_pagamento == 2)
  {
      valor_desconto = 0.0
      valor_final = valor_total_bruto
  }
  senao
  {
      escreva("Opção inválida! Processando valor normal.\n")
      valor_final = valor_total_bruto
  }

  // ====================== NOTA FISCAL ======================
  limpar()
  escreva("=========================\n")
  escreva("  NOTA FISCAL - LOJA VIRTUAL\n")
  escreva("=========================\n")
  escreva("Itens comprados:\n")

  se (qtd_carrinho_prod1 > 0)
  {
      escreva("- ", qtd_carrinho_prod1, "x Camisa Esportiva = R$ ", qtd_carrinho_prod1 * preco_prod1, "\n")
  }
  senao se (qtd_carrinho_prod2 > 0)
  {
      escreva("- ", qtd_carrinho_prod2, "x Boné Casual = R$ ", qtd_carrinho_prod2 * preco_prod2, "\n")
  }
  senao se (qtd_carrinho_prod3 > 0)
  {
      escreva("- ", qtd_carrinho_prod3, "x Tênis de Corrida = R$ ", qtd_carrinho_prod3 * preco_prod3, "\n")
  }

  escreva("---------------------------\n")
  escreva("Valor total bruto: R$ ", valor_total_bruto, "\n")
  escreva("Desconto aplicado: R$ ", valor_desconto, "\n")
  escreva("Valor final a pagar: R$ ", valor_final, "\n")
  escreva("---------------------------\n")
  escreva("Obrigado por comprar conosco!\n")

  escreva("\nPressione ENTER para sair...")
  leia(tecla_pausa)
}
}
}
