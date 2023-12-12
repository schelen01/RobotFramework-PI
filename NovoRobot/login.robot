*** Settings ***
Documentation        Caso de teste Positivo de acesso à tela de login
Library  SeleniumLibrary

*** Variables ***
${BROWSER}                      Chrome
${URL}                          https://carhub-dh.vercel.app/login
${input_email}                  name:email
${input_password}               name:password 
${button_submitEnter}           //button[contains(text(), "Entrar")]
${card_SUV}                     //div[@class='MuiCardContent-root mui-vxvg9w']
${button_ofertaTracker}         //button[contains(text(), "Tracker")]   


*** Keywords ***
abrir navegador
    Open Browser    ${URL}    ${BROWSER}

preencher os campos
        Input Text  ${input_email}      admin@admin.com
        Sleep                           1s
        Input Text  ${input_password}   123456 
        Sleep                           2s 
        
clicar em Entrar
        Click Element  ${button_submitEnter}

Escolher categoria
        Click Element  ${card_SUV}

Clicar na option
        Click Element  ${button_ofertaTracker} 
fechar navegador
    Close Browser




*** Test Cases ***
Cenário 1: Abrir a Tela de login
    abrir navegador
    Maximize Browser Window
    preencher os campos
    clicar em Entrar
    Sleep                           5s
    fechar navegador
    
Cenário 2: Abrir como Admin e fazer reserva
    abrir navegador
    Maximize Browser Window
    preencher os campos
    Sleep                           2s
    clicar em Entrar
    Sleep                           5s
    Escolher categoria
    Sleep                           2s
    Clicar na option
    Sleep                           2s