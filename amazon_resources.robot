*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${BROWSER}    chrome
${URL}    http://Amazon.com.br
${MENU_ELETRONICOS_XPATH}    //a[contains(.,'Eletrônicos')]
${ELETRONICOS_H1_TEXT}    Eletrônicos e Tecnologia
*** Keywords ***
abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
clicar no menu "Eletronicos"
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS_XPATH}
    Click Element    locator=${MENU_ELETRONICOS_XPATH}
Verificar se aparece a frase "${Frase}"
    Wait Until Page Contains    text=${Frase}

Verificar se o titulo da pagina fica "${Titulo}"
    Title Should Be    title=${Titulo}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//a[@aria-label='${NOME_CATEGORIA}']

Digitar o nome de produto "${PRODUTO_PESQUISADO}" no campo de Pesquisa
    Input Text    locator=//input[@id='twotabsearchtextbox']    text=${PRODUTO_PESQUISADO}
Clicar no botão Pesquisa
    Click Button    locator=//input[@id='nav-search-submit-button']

Verificar o resultado da Pesquisa, se esta listando o produto "${PRODUTO_PESQUISADO}"
    Wait Until Element Is Visible    locator=
    