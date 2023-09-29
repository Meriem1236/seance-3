*** Settings ***
Library    SeleniumLibrary


*** Variables ***
# Variables scalaires:c'est des variables qui peuvent contenir une seule valeur a la fois(portée globale)
${Premiere Valeur}=    100
${deuxieme Valeur}=    200
${Nom}=    Meriem
${troisieme Valeur}=    200.5
${Browzer}=    chrome
${url}=    https://www.google.com
# Variables de type liste
@{ville}=    Montréal    Longuil    Laval
@{list valeur}=    1    2    3    4
# Valeiables de type dictionnaire( on stock les données sous forme de paire clé: valeur)
&{url-env}=    qa=https://www.google.qa.ca    dev=https://www.google.dev.ca 


*** Test Cases ***
tc01 mon premier test
    Log    ${Premiere Valeur}
    Log    ${deuxieme Valeur}
    Log    ${Nom}
    Log    ${troisieme Valeur}
    Log    ${Browzer}
    Log    ${url}
    Log    ${ville}[0] ${ville}[1]
    Log    ${ville}[2]   
    Log    ${url-env}[qa]
    Log    ${url-env}[dev]
    # Log    ${Quatrieme Variable}
tc02 mon deuxieme test
    # ${Quatrieme Variable}=    Log    test
    Log    ${Nom}
