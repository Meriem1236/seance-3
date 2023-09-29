*** Settings ***

*** Variables ***

*** Test Cases ***
tc01
    [Tags]    regression
    Log    test01
tc02
    [Tags]    regression
    Log    test02
tc03
    [Tags]    sanity
    Log    test03
tc04
    [Tags]    sanity
    Log    test04
tc05
    [Tags]    performence
    Log    test05
tc06
    [Tags]    performence
    Log    test06
#pour executer tous les cas de test: robot .  
#pour executer le test03: robot test03.robot 
#pour executer uniquement les test de performence qui se trouve dans test03: 
    # robot -d Results --include performence TestCases/test03.robot 
#pour executer tout sauf les test de performence qui se trouve dans test03: 
    # robot -d Results --exclude performence TestCases/test03.robot 
    