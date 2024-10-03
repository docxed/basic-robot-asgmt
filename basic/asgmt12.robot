*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Age Verification
    ${age}    Set Variable    20
    Run Keyword If    ${age} > 18    Log    You are an adult
    ...    ELSE IF    ${age} == 18    Log    You just became an adult    
    ...    ELSE    Log    You are underage
    
*** Keywords ***
