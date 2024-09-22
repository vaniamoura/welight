*** Settings ***
Documentation   Testes Cadastro de Login
Resource        ../resources/Page/Cadlogin/Cadlogin.Robot
Library         Screenshot      

*** Test Cases ***
CT01 - Cadastro login campos obrigatórios
    [tags]   001
    Abrir a Página de Login
    Clicar no botao cadastrar 
    Digitar o nome 
    Digitar o e-mail 
    Digitar o telefone
    Digitar o cpf
    Digite a Senha
    Confirme a Senha
    Click nos termos de aceite
    Click em cadastrar login
    Fechar Navegador

CT02 - Acessar o sistema
    [tags]   002
    Abrir a Página de Login
    Digitar o e-mail 
    Digite a Senha
    Click em entrar
    Click em conta
    Click em minha conta
    Digite o CEP
    Click em salvar
    Fechar Navegador

