*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${LOGIN_URL}            https://novo.welight.live/login
${BTN_CADASTRAR}        //a[contains(.,'CADASTRAR')]

${INP_NOME}             //input[@placeholder='Nome']
${INP_EMAIL}            //input[@placeholder='Email']
${INP_TELEFONE}         //input[@placeholder='Telefone']
${INP_CPF}              //input[@placeholder='CPF']
${INP_SENHA}            //input[@placeholder='Senha']
${INP_CONFSENHA}        id=user_password_confirmation
${CHK_TERMOSUSO}        id=termos-de-uso
${BTN_REGISTRAR}        //input[@id='btn_registrar']
${BTN_ENTRAR}           //input[contains(@value,'Entrar')]


${BTN_CONTA}            //div[@placement='bottom']
${BTN_MINHACONTA}       //a[@href='/myaccount']

${INP_CEP}              //input[@name='userCep']
${BTN_SALVAR}           //button[contains(.,'Salvar')]



*** Keywords ***
Configurar WebDriver
    Set Selenium Implicit Wait          10 seconds
    Set Selenium Timeout                15 seconds

Abrir a Página de Login
    Open Browser    ${LOGIN_URL}        browser=Chrome
    Maximize Browser Window

Clicar no botao cadastrar
    Wait Until Element Is Visible     ${BTN_CADASTRAR}
    Set Focus To Element              ${BTN_CADASTRAR}
    Click Element                      ${BTN_CADASTRAR}
    Sleep    2s

Digitar o nome 
    Wait Until Element Is Visible     ${INP_NOME}
    Input Text    ${INP_NOME}    Teste final Gravando

Digitar o e-mail 
    Wait Until Element Is Visible     ${INP_EMAIL}
    Input Text    ${INP_EMAIL}    testefinal@gmail.com     

Digitar o telefone
    Wait Until Element Is Visible     ${INP_TELEFONE}
    Input Text    ${INP_TELEFONE}    21985856666

Digitar o cpf
    Wait Until Element Is Visible     ${INP_CPF}
    Input Text    ${INP_CPF}    239.292.780-49

Digite a Senha
    Wait Until Element Is Visible     ${INP_SENHA}
    Input Text    ${INP_SENHA}    Abc123456

Confirme a Senha
    Wait Until Element Is Visible     ${INP_CONFSENHA}
    Input Text    ${INP_CONFSENHA}    Abc123456

Click nos termos de aceite
    Wait Until Element Is Visible     ${CHK_TERMOSUSO} 
    Click Button                      ${CHK_TERMOSUSO}
    Sleep    10s 

Click em cadastrar login
    Wait Until Element Is Visible     ${BTN_REGISTRAR} 
    Set Focus To Element              ${BTN_REGISTRAR}
    Click Element                     ${BTN_REGISTRAR} 
    Sleep    5s

Click em entrar
    Wait Until Element Is Visible     ${BTN_ENTRAR} 
    Set Focus To Element              ${BTN_ENTRAR}
    Click Element                     ${BTN_ENTRAR}
    Sleep    5s 

Click em conta
    Wait Until Element Is Visible     ${BTN_CONTA} 
    Click Element                     ${BTN_CONTA} 

Click em minha conta
    Wait Until Element Is Visible     ${BTN_MINHACONTA} 
    Click Element                     ${BTN_MINHACONTA}
    Sleep    2s

Digite o CEP
    Wait Until Element Is Visible     ${INP_CEP}
    Input Text    ${INP_CEP}    24240-660    
    Press Keys     ${INP_CEP}    ENTER

Click em salvar
    Wait Until Element Is Visible     ${BTN_SALVAR} 
    Click Button                      ${BTN_SALVAR}
    Sleep    5s 

Fechar Navegador
    Close Browser


Vejo a mensagem de obrigatorio "${mensagem}" no campo
    Wait Until Element Is Visible   xpath=(//span[@class='c-giTbpN'][contains(.,'Campo obrigatório')])[1]
    Element Text Should Be    xpath=(//span[@class='c-giTbpN'][contains(.,'Campo obrigatório')])[2]   Campo obrigatório
    Capture Page Screenshot



