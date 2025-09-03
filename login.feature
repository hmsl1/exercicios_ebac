      #language: pt

      Funcionalidade: Login na plataforma EBAC-SHOP
      Como cliente da EBAC-SHOP
      Quero fazer o login (autenticação) na plataforma
      Para visualizar meus pedidos


      Contexto:
      Dado que estou na página de autenticação

      Cenário: Login com credenciais válidas
      Quando eu preencher os campos de e-mail com "cliente@ebac.com.br" e senha com "senha_valida"
      E clicar no botão "Entrar"
      Então devo ser redirecionado para a página de checkout

      Esquema do Cenário: Tentativa de login com credenciais inválidas
      Quando eu preencher o campo de e-mail com <email> e o campo de senha com <senha>
      E clicar no botão "Entrar"
      Então devo permanecer na página de autenticação e o sistema deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"
      
      Exemplos:
      | email                  | senha            |
      | "cliente@ebac.com.br"  | "senha_invalida" |
      | "invalido@ebac.com.br" | "senha_valida"   |
      | "invalido@ebac.com.br" | "senha_invalida" |
      | ""                     | "senha_valida"   |
      | "cliente@ebac.com.br"  | ""               |