*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Calculate Grade
    ${grade}    Cal Grade    30
    Log    ${grade}

    ${grade}    Cal Grade    65
    Log    ${grade}

    ${grade}    Cal Grade    85
    Log    ${grade}

    ${grade}    Cal Grade    95
    Log    ${grade}

*** Keywords ***
Cal Grade
    [Arguments]    ${score}
    IF  ${score} < 60
        ${grade}    Set Variable    F
    ELSE IF  ${score} < 70
        ${grade}    Set Variable    D
    ELSE IF  ${score} < 80
        ${grade}    Set Variable    C
    ELSE IF  ${score} < 90
        ${grade}    Set Variable    B
    ELSE
        ${grade}    Set Variable    A
    END

    Return From Keyword    ${grade}
