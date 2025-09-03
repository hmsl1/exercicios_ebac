            #language: pt

            Funcionalidade: Configurar produto na EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que estou na página de um produto

            Cenário: Seleção de cor, tamanho e quantidade obrigatórios
            Quando tento adicionar o produto ao carrinho
            E não seleciono a cor ou tamanho ou quantidade
            Então o produto não deve ser adicionado ao carrinho e o sistema deve exibir uma mensagem de erro informando que "A seleção de cor, tamanho e quantidade são obrigatórias."
            
            Cenário: Limite de 10 produtos por venda
            Quando tento adicionar 11 unidades do produto ao carrinho
            Então o produto não deve ser adicionado ao carrinho e o sistema deve exibir uma mensagem de erro informando que "São permitidas apenas 10 unidades por carrinho."

            Cenário: Funcionalidade do botão "limpar"
            Quando eu seleciono cor, tamanho e quantidade válidas
            E clico no botão "limpar"
            Então os campos de seleção de cor, tamanho e quantidade devem retornar ao seu estado padrão