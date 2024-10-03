*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Error Handling Example
    ${status}    Run Keyword And Return Status    Click Element    invalid_locator
    Log    ${status}
    Run Keyword And Ignore Error    Input Text    invalid_locator    value
    Log    Ignored the error and continued
    
*** Keywords ***
