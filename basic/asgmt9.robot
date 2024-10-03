*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC_001
    ${square}    Calculate Square    number=4
    ${answer}    Evaluate    int(16)
    Should Be Equal    ${square}    ${answer}

*** Keywords ***
Calculate Square
    [Arguments]    ${number}
    ${result}    Evaluate    ${number} * ${number}
    Return From Keyword    ${result}