            #language: pt

            Funcionalidade: Cadastro de cliente EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que estou na página de cadastro da EBAC-SHOP

            Cenário: Cadastro realizado com sucesso com todos os dados obrigatórios
            Quando preencho todos os campos obrigatórios e clico no botão "Finalizar Cadastro"
            Então devo ser redirecionado para a página de finalização da compra e ver a mensagem "Cadastro realizado com sucesso"

            Esquema do Cenário: Validação de formato de email
            Quando insiro <email> no campo de email
            E clico no botão "Finalizar Cadastro"
            Então eu devo ver <resultado>

            Exemplos:
            | email                    | resultado                       |
            | joao.silva@email.com     | Cadastro realizado com sucesso  |
            | maria@empresa.com.br     | Cadastro realizado com sucesso  |
            | email-invalido           | Erro: Formato de email inválido |
            | @dominio.com             | Erro: Formato de email inválido |
            | usuario@                 | Erro: Formato de email inválido |
            | usuario..duplo@email.com | Erro: Formato de email inválido |

Cenário: Tentativa de cadastro com múltiplos campos vazios
Quando clico no botão "Finalizar Cadastro" sem preencher algum campo obrigatório
Então devo ver a mensagem de alerta "Campos obrigatórios não preenchidos"
E não devo ser redirecionado e o foco deve ir para o primeiro campo obrigatório vazio