** Settings **
Library         SeleniumLibrary
Resource        ..Elements/Home/Home_Elements.resource
Resource        ..Elements/Materiais/Materiais_Elements.resource
Resource        ..Elements/Playbook/Playbook_Elements.resource
Resource        ..Resources/Settings.resource

** Variables **


** Test Cases **
Cenário 1: Validando Login com sucesso na HomePage da Growth
    Dado que eu acesse o site da Growth
    E preencha o campo email
    E preencha o campo senha
    Quando clico no botão Entrar
    Então a página Materiais é exibida

Cenário 2: Tentando Login na HomePage da Growth com email incorreto 
    Dado que eu acesse o site da Growth
    E preencha o campo email com um email não cadastrado
    E preencha o campo senha
    Quando clico no botão Entrar
    Então é exibida a mensagem de erro

Cenário 3: Tentando Login na HomePage da Growth com senha incorreta
    Dado que eu acesse o site da Growth
    E preencha o campo email
    E preencha o campo senha com uma senha inválida
    Quando clico no botão Entrar
    Então é exibida a mensagem de erro

Cenário 4: Tentando Login na HomePage da Growth com campo email vazio
    Dado que eu acesse o site da Growth
    E não preencha o campo email
    E preencha o campo senha
    Quando clico no botão Entrar
    Então é exibida a mensagem de erro

Cenário 5: Tentando Login na HomePage da Growth com campo senha vazio
    Dado que eu acesse o site da Growth
    E preencha o campo email
    E não preencha o campo senha
    Quando clico no botão Entrar
    Então é exibida a mensagem de erro

Cenário 6: Formato inválido para o campo email
    Dado que eu acesse o site da Growth
    E preencha o campo email com um formato inválido
    E preencha o campo senha
    Quando clico no botão Entrar
    Então é exibida a mensagem de erro