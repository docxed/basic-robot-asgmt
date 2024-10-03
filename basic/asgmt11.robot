*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC_001
    &{user}    Create User Info
    Log    Name: ${user.name}
    

*** Keywords ***
Create User Info
    ${user_info}    Create Dictionary    name=John    age=30    city=Bangkok
    Return From Keyword    ${user_info}