*** Settings ***
Documentation    Essa suite testa o site da Amazon
Resource         amazon_resources.robot
Test Setup       abrir o navegador
# Test Teardown    fechar o navegador

*** Test Cases ***
Caso de teste 1 - Acesso ao menu "eletronicos"
    [Documentation]    Esse teste verifica o menu eletronico do site da Amazon
    ...                e a categoria "computadores e informatica"
    [Tags]             menus    categorias
    Acessar a home page do site Amazon.com.br
    clicar no menu "Eletronicos"
    Verificar se o titulo da pagina fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a frase "Eletronicos e eletronica"
    Verificar se aparece a categoria "computadores e informática"
Caso de teste 2 - Pesquisa de um produto
    [Documentation]    Esse teste verifica a pesquisa de um produto
    [Tags]             busca_produtos
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox series S" no campo de Pesquisa
    Clicar no botão Pesquisa
    Verificar o resultado da Pesquisa, se esta listando o produto Pesquisado