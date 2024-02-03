** Settings **
Library         SeleniumLibrary
Resource        ..Elements/Home/Home_Elements.resource
Resource        ..Elements/Materiais/Materiais_Elements.resource
Resource        ..Elements/Playbook/Playbook_Elements.resource
Resource        ..Resources/Settings.resource

** Variables **

** Keywords **

** Test Cases **
Cenário 1: Validando acesso e visualização do Playbook para usuários membros
    Dado que eu acesse o site da Growth com perfil de membro
    E acesse o Playbook
    Quando clico no botão de edição
    #Então recebo a mensagem de permissão negada para edição(Não foi possível executar o teste pois não foram disponibilizadas credenciais com o perfil de membro)

Cenário 2: Validando edição de dados do Playbook para usuários administradores
    Dado que eu acesse o site da Growth com perfil de administrador
    E acesse o Playbook
    Quando clico no botão de edição
    E efetuo a edição do Playbook
    E a modificação é efetuada com sucesso
    Então fecho o navegador
    E acesso o playbook novamente para verificar se a modificação persiste

    
    
