# Teste Prático - QA | Impact not a bank

## Sumário
- [1. Casos de Teste Manuais](#1-casos-de-teste-manuais)
  - [CT01 - Cadastro login campos obrigatórios](#ct01---cadastro-login-campos-obrigatórios)
  - [CT02 - Cadastro com formato de telefone errado e nome com caracteres especiais](#ct02---cadastro-com-formato-de-telefone-errado-e-nome-com-caracteres-especiais)
  - [CT03 - Tentativa de cadastro sem telefone](#ct03---tentativa-de-cadastro-sem-telefone)
  - [CT04 - Teste login com e-mails incorretos](#ct04---teste-login-com-e-mails-incorretos)
  - [CT05 - Teste login com senhas incorretas](#ct05---teste-login-com-senhas-incorretas)
  - [CT06 - Verificar alterações realizadas em "Minha Conta"](#ct06---verificar-alterações-realizadas-em-minha-conta)
- [2. Automação de Testes](#2-automação-de-testes)
  - [CT01 - Cadastro login campos obrigatórios](#ct01---cadastro-login-campos-obrigatórios-1)
  - [CT02 - Acessar o sistema](#ct02---acessar-o-sistema-com-login-criado-e-fazer-alteração-no-cadastro)
- [3. Relatório de Bugs e Melhorias](#3-relatório-de-bugs-e-melhorias)
  - [Bug 1: O campo NOME aceita caracteres especiais](#bug-1-o-campo-nome-aceita-caracteres-especiais)
  - [Bug 2: O campo TELEFONE aceita caracteres especiais e letras](#bug-2-o-campo-telefone-aceita-caracteres-especiais-e-letras)
  - [Bug 3: O campo PAÍS não é carregado ao inserir o CEP](#bug-3-o-campo-país-não-é-carregado-ao-inserir-o-cep)

---

## 1. Casos de Teste Manuais

**Objetivo:** Criar ao menos 3 casos de teste manuais para cada cenário descrito.

### Cenários:
- Validar campos obrigatórios durante a criação do usuário, login e em "Minha Conta".
- Verificar se não houve erros na criação de usuário.
- Testar login com senhas e emails incorretos.
- Verificar se as alterações realizadas em "Minha Conta" foram aplicadas.

### **CT01 - Cadastro login campos obrigatórios**
- **Objetivo:** Validar os campos obrigatórios na criação do usuário.
- **Ação:** Acessar [Welight Login](https://novo.welight.live/login) > CADASTRAR, e validar os campos obrigatórios.
- **Resultado esperado:** Exibir mensagem "Parabéns! Seu cadastro foi realizado com sucesso".
- **Resultado apresentado:** Satisfatório.
- **Evidência:** [Link do video - CT01.mp4](https://drive.google.com/file/d/17yp2QN5l0FICMl1SesQUcWWhND8Tl2w8/view?usp=sharing)

### **CT02 - Cadastro com formato de telefone errado e nome com caracteres especiais**
- **Ação:** Inserir caracteres especiais e mais de 100 caracteres no campo nome. No campo telefone, inserir mais números que o padrão nacional.
- **Resultado esperado:** Não permitir telefone com quantidade de caracteres inválida.
- **Resultado apresentado:** Exibiu a mensagem "Parabéns! Seu cadastro foi realizado com sucesso".
- **Evidência:** [Link do video - CT02.mp4](https://drive.google.com/file/d/1eHYQ9VnSpX_BvrZ2WRP1apFCk56mAtz-/view?usp=drive_link)

### **CT03 - Tentativa de cadastro sem telefone**
- **Ação:** Preencher todos os campos, exceto o campo telefone.
- **Resultado esperado:** O cadastro não deve ser possível.
- **Resultado apresentado:** Satisfatório.
- **Evidência:** [Link do video - CT03.mp4](https://drive.google.com/file/d/1STqifkeKYqPbaZHcFhVEbm074UZytxac/view?usp=drive_link)

### **CT04 - Teste login com e-mails incorretos**
- **Ação:** Inserir e-mail incorreto no login.
- **Resultado esperado:** Exibir mensagem "Senha ou E-mail incorreto".
- **Resultado apresentado:** Satisfatório.
- **Evidência:** [Link do video - CT04.mp4](https://drive.google.com/file/d/1g0S0pwmmGeHZQqD5JcnNe-NnPlCX824a/view?usp=drive_link)

### **CT05 - Teste login com senhas incorretas**
- **Ação:** Inserir senha incorreta no login.
- **Resultado esperado:** Exibir mensagem "Senha ou E-mail incorreto".
- **Resultado apresentado:** Satisfatório.
- **Evidência:** [Link do video - CT05.mp4](https://drive.google.com/file/d/1uEEXMm1JMXnPXjW7q5at5iZCqxMm-TDa/view?usp=drive_link)

### **CT06 - Verificar alterações realizadas em "Minha Conta"**
- **Ação:** Verificar se os dados modificados em "Minha Conta" foram salvos corretamente.
- **Resultado esperado:** Os dados devem estar idênticos aos inseridos.
- **Resultado apresentado:** Satisfatório.
- **Evidência:** [Link do video - CT06.mp4](https://drive.google.com/file/d/1-CsNgAL6gc0yUUqPm8NkxhLhRhyqOHVD/view?usp=drive_link)

## 2. Automação de Testes

### Tecnologias
* Robot Frameworks
* Selenium
* Python
     
**Ferramenta sugerida:** Selenium.  
**Objetivo:** Automatizar o fluxo de criação de um usuário no sistema.

### Execução 

Dentro de `\suite`, rode o comando `robot -d ./result CadLoginTests.Robot`

### **CT01 - Cadastro login campos obrigatórios**
- **Cenário:** Efetuar o cadastro com todos os campos preenchidos.
- **Relatório de Log:** `suite/result/RELCT01.html`

### **CT02 - Acessar o sistema com login criado e fazer alteração no cadastro**
- **Cenário:** Acessar o sistema, entrar em "Minha Conta" e preencher o CEP.
- **Relatório de Log:** `suite/result/RELCT02.html`

---

## 3. Relatório de Bugs e Melhorias

**Objetivo:** Elaborar um relatório descrevendo bugs encontrados e sugerir melhorias para o sistema.

### **Bug 1: O campo NOME aceita caracteres especiais**
- **Descrição:** O campo nome aceita caracteres especiais e não tem limite de caracteres.
- **Passos para Reproduzir:**  
  - Acesse a [página de login](https://novo.welight.live/login).
  - Clique em "CADASTRAR".
  - Preencha o campo nome com caracteres especiais e clique em "Cadastrar".
- **Resultado esperado:** O sistema deve criticar e não permitir salvar.
- **Ambiente:**  
  - Sistema operacional: Windows  
  - Navegador: Chrome  
  - Versão do aplicativo: 1.0
- **Prioridade:** Média  
- **Severidade:** Média  
- **Anexos:** 
  - ![image](https://github.com/user-attachments/assets/41e750a9-a2f9-4350-9f40-0bda70836c73) ![image](https://github.com/user-attachments/assets/a5311b60-3f56-4d1e-bb68-31b3d4c5cb5a)
    
- **Melhoria:** Não permitir caracteres especiais e limitar o tamanho do campo NOME.


### **Bug 2: O campo TELEFONE aceita caracteres especiais e letras**
- **Descrição:** O campo telefone aceita caracteres especiais e letras.
- **Passos para Reproduzir:**  
  - Acesse a [página de login](https://novo.welight.live/login).
  - Clique em "CADASTRAR".
  - Preencha o campo telefone com caracteres especiais e clique em "Cadastrar".
- **Resultado esperado:** O sistema deve criticar e não permitir salvar.
- **Ambiente:**  
  - Sistema operacional: Windows  
  - Navegador: Chrome  
  - Versão do aplicativo: 1.0
- **Prioridade:** Média  
- **Severidade:** Média  
- **Anexos:**
  - ![image](https://github.com/user-attachments/assets/773ba9ca-c7ce-4570-9677-817da6afef67) ![image](https://github.com/user-attachments/assets/5f27c697-86df-4b5d-b4ee-f1b30a8663e0)
    
- **Melhoria:** Não permitir caracteres especiais, letras e limitar o tamanho do campo TELEFONE.

### **Bug 3: O campo PAÍS não é carregado ao inserir o CEP**
- **Descrição:** O campo país não é carregado automaticamente ao inserir o CEP.
- **Passos para Reproduzir:**  
  - Acesse a [página de login](https://novo.welight.live/login).
  - Digite login e senha.
  - Clique em "ENTRAR".
  - Ao preencher o campo CEP o sistemas os demais capos relacionado ao endereço, o campo PAÍS não é carregado conforme os outros campos.
- **Resultado esperado:** O campo país deve ser preenchido automaticamente.
- **Ambiente:**  
  - Sistema operacional: Windows  
  - Navegador: Chrome  
  - Versão do aplicativo: 1.0
- **Prioridade:** Média  
- **Severidade:** Média
- **Anexos:**
  - ![image](https://github.com/user-attachments/assets/09e7b714-358b-48a9-9ac6-0045e06e5e3b) ![image](https://github.com/user-attachments/assets/563b408b-33c6-47e4-96d9-170fbf2d5578)
 
- **Melhoria:** Ao inserir o CEP carregar o PAÍS.

### **Bug 4: O campo DATA DE NASCIMENTO permitite colocar a data atual**
- **Descrição:** O campo data de nascimento permite colocar a data atual.
- **Passos para Reproduzir:**  
  - Acesse a [página de login](https://novo.welight.live/login).
  - Digite login e senha.
  - Clique em "ENTRAR".
  - Preencha o campo data de nascimento com a data atual.
- **Resultado esperado:** Sistemas dar um alerta.
- **Ambiente:**  
  - Sistema operacional: Windows  
  - Navegador: Chrome  
  - Versão do aplicativo: 1.0
- **Prioridade:** Média  
- **Severidade:** Média
- **Anexos:**
   [Link do video - Melhoria.mp4](https://drive.google.com/file/d/1-CsNgAL6gc0yUUqPm8NkxhLhRhyqOHVD/view?usp=drive_link)
 
- **Melhoria:** Sistema não permitir data de hoje e/ou data futura.
  


