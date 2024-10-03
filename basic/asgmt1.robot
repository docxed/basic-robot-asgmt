*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC_001
    Validate Age    age=16
    Validate Age    age=20

*** Keywords ***
Validate Age
    [Arguments]    ${age}
    Run Keyword If    ${age} > 18    Log    Eligible for voting    ELSE    Log    Not eligible for voting