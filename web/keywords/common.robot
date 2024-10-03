*** Settings ***
Resource    ./import.robot

*** Keywords ***
Open Browser And Maximize
    [Arguments]    ${url}
    SeleniumLibrary.Open Browser    url=${url}    browser=gc
    SeleniumLibrary.Maximize Browser Window

Close Browser
    SeleniumLibrary.Close Browser