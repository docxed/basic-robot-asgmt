*** Settings ***
Library    SeleniumLibrary
Variables    ./yaml/variables.yaml

*** Variables ***

*** Test Cases ***
TC_001
    Log    ${user.name}.${user.age}.${user.city}

*** Keywords ***
    