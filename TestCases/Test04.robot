*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}=    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browzer}=    edge

*** Test Cases ***
Test001 login test
    Se connecter a l'application orange demo    ${url}    ${browzer}
    Saisir le nom d'utilisateur
    Saisir le mot de passe
    Cliquer sur le bouton login
    Valider l'affichage de la page d'accueil 
    Fermer le navigateur apres l'execution du script 


*** Keywords ***
Se connecter a l'application orange demo
    [Arguments]    ${Myurl}    ${Mybrowzer}
    Open Browser    ${Myurl}    ${Mybrowzer}
    Maximize Browser Window
    Sleep    3

Saisir le nom d'utilisateur
    Clear Element Text    name:username
    Input Text    name:username    Admin

 Saisir le mot de passe
     Clear Element Text    name:password
     Input Password    name:password    admin123

Cliquer sur le bouton login
    Click Button    xpath://button
    Sleep    3

Valider l'affichage de la page d'accueil
    Element Text Should Be    xpath://h6    Dashboard

Fermer le navigateur apres l'execution du script
    Close All Browsers