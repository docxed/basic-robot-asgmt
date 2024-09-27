*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC_001
    Greet User    John
    Greet User

*** Keywords ***
Greet User
    [Arguments]    ${name}=Guest
    Log    Hello, ${name}
    