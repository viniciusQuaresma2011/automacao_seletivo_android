*** Settings ***
Resource    ../../../Base.robot
Library    ../../../resources/factories/Artigo.py
Resource   ../../pages/Artigo.robot

Suite Setup    Open Session
Suite Teardown    Close Session


*** Test Cases ***
Deve cadastrar um Artigo
    [Tags]    regression

    ${artigo}    Factory Artigo
    
    Click Botão Adicionar Artigo

    Input Titulo    ${artigo['titulo']}
    Input Resumo   ${artigo['resumo']}
    Input Artigo   ${artigo['text']}
    
    Click Botão Salvar

    ${mensagemSucesso}    Obter Conteudo do Titulo
    Should Be Equal    Cadastro realizado com sucesso    ${mensagemSucesso}


