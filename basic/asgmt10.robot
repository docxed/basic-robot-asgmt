*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC_001
    @{my_fruits}    Create Fruit List
    Log    ${my_fruits}[0]
    

*** Keywords ***
Create Fruit List
    ${fruits}    Create List    apple    banana    cherry    
    Return From Keyword    ${fruits}