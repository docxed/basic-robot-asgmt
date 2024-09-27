*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Test Factorial Calculation
    ${result}    Calculate Factorial    number=5
    ${answer}    Evaluate    int(120)
    Should Be Equal    ${result}    ${answer}
    
*** Keywords ***
Calculate Factorial
    [Arguments]    ${number}
    Run Keyword If    ${number} == 1    Return From Keyword    1
    ${back}    Evaluate    ${number} - 1
    ${previous}    Calculate Factorial    number=${back}
    ${result}    Evaluate    ${number} * ${previous}
    Return From Keyword    ${result}
    