*** Settings ***
Library    SeleniumLibrary
Resource    ./keywords/keywords.robot

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

