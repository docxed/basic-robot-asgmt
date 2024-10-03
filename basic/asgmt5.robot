*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC_001
    Print All Items    apple    banana    cherry    orange    mango

*** Keywords ***
Print All Items
    [Arguments]    @{items}
    FOR  ${item}  IN  @{items}
        Log    ${item}
    END
    
    