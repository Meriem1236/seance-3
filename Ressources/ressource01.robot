*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}=    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}=   chrome 


*** Keywords ***
Se connecter a l'application orange demo
    [Documentation]    ce keyword est crée par Meriem
    ...    pour ouvrir des applications web sur un navigateur
    Open Browser    ${url}    ${browser}
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