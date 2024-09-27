*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC_001
    Print User Info    user_info=    name=Akira    age=24    city=Bangkok

*** Keywords ***
Print User Info
    [Arguments]    &{user_info}
    Log    Name: ${user_info}[name]
    Log    Age: ${user_info}[age]
    Log    City: ${user_info}[city]
    