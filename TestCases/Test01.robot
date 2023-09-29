*** Settings ***
Resource    ../Ressources/ressource01.robot
Documentation    Cette suite de test est créée par Meriem
Suite Setup    Log    J'execute une fois avant le test
Suite Teardown    Log    J'execute une seul fois aprés le test
Test Setup    Se connecter a l'application orange demo
Test Teardown    Fermer le navigateur apres l'execution du script

*** Test Cases ***
Test001 login test
    When Saisir le nom d'utilisateur
    And Saisir le mot de passe
    And Cliquer sur le bouton login
    Then Valider l'affichage de la page d'accueil    
    Log    Fin des tests
    Log To Console    Fin des tests


