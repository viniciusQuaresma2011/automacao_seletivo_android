*** Settings ***
Resource    ../../Base.robot

*** Variables ***
${botao_adicionar}    mobi.audax.processoseletivo:id/addButton

${botao_salvar}        button_salvar

${app}    
    
*** Keywords ***


Input Titulo
    [Arguments]    ${titulo}
    Wait Until Page Contains Element    mobi.audax.processoseletivo:id/titulo
    Input Text    mobi.audax.processoseletivo:id/titulo    ${titulo}

Input Resumo
    [Arguments]    ${resumo}
    Wait Until Page Contains    mobi.audax.processoseletivo:id/resumo 
    Input Text    mobi.audax.processoseletivo:id/resumo    ${resumo}
Input Artigo
    [Arguments]    ${text}
    Wait Until Page Contains    mobi.audax.processoseletivo:id/texto 
    Input Text    mobi.audax.processoseletivo:id/texto    ${text}

Click Botão Salvar
    Click Element    mobi.audax.processoseletivo:id/btnSalvar

Click Botão Adicionar Artigo
    Wait Until Page Contains Element    ${botao_adicionar}
    Click Element    ${botao_adicionar}

Obter Conteudo do Titulo
    Wait Until Page Contains    mobi.audax.processoseletivo:id/title
    ${texto}    Get Text    mobi.audax.processoseletivo:id/title
    RETURN     ${texto}