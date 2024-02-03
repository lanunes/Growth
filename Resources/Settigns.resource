** Settings **
Library  SeleniumLibrary

** Variables **
#Credenciais
${user}         usuariodaempresa33@gmail.com
${password}     Senha.123

** Keywords **
Dado que eu acesse o site da Growth
    Open Browser  https://growth-station-client-git-processo-qa-growthmachine.vercel.app/login  chrome
    Sleep   5s

E preencha o campo email
    Input Text  ${input_email}    usuariodaempresa33@gmail.com
    Sleep   5s

E preencha o campo email com um email não cadastrado
    Input Text  ${input_email}      teste@login.com

E preencha o campo senha
    Input Text  ${input_senha}    Senha.123
    Sleep   5s

E preencha o campo senha com uma senha inválida
    Input Text  ${input_senha}    123.Senha
    Sleep   5s

E não preencha o campo email
    Click Element  ${input_email}       
    Press Keys    ${input_email}    TAB
    Sleep          5s

E preencha o campo email com um formato inválido
    Input Text  ${input_email}      teste.com

E não preencha o campo senha
    Click Element  ${input_senha}       
    Press Keys     ${input_senha}   TAB
    Sleep          5s

Quando clico no botão Entrar
    Click Element    ${button_entrar}
    Sleep   10s

Então a página Materiais é exibida 
    Go To    ${MATERIALS_URL}
    Wait Until Page Contains    ${boasvindas_message}

Então é exibida a mensagem de erro
    Wait Until Page Contains    ${erro_acesso_email_message}

Fechar Navegador
    Close Browser
#Keywords utilizadas nos testes do Playbook
Dado que eu acesse o site da Growth com perfil de administrador
    Open Browser  https://growth-station-client-git-processo-qa-growthmachine.vercel.app/login  chrome
    Sleep   5s
    Input Text       ${input_email}    
    Input Text       ${input_senha}    
    Click Element    ${button_entrar}
    Sleep   5s

E acesse o Playbook
    Wait Until Page Contains Element     ${button_conteudo}
    Click Element                        ${button_conteudo}
    Sleep   5s
    Click Element                        ${button_playbook}
    Sleep   10s

Quando clico no botão de edição
    Click Element                       ${button_edicao}
    Sleep                               10s
    Wait Until Element Is Visible       ${Playbook_introducao}
    Click Element                       ${Playbook_introducao}

E efetuo a edição do Playbook
    Input Text                           ${Playbook_introducao}   1-introducao
    
E a modificação é efetuada com sucesso
    Wait Until Element Is Visible        ${mensagem_salvando}

E acesso o playbook novamente para verificar se a modificação persiste
    Open Browser  https://growth-station-client-git-processo-qa-growthmachine.vercel.app/login  chrome
    Sleep   5s
    Input Text       ${input_email}    ${user}
    Input Text       ${input_senha}    ${password}
    Click Element    ${button_entrar}
    Sleep   5s
    Wait Until Page Contains Element     ${button_conteudo}
    Click Element                        ${button_conteudo}
    Sleep   5s
    Click Element                        ${button_playbook}
    Sleep   10s
    Wait Until Element Is Visible       ${Playbook_introducao}

Então fecho o navegador
    Close Browser