*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Print Fruit List
    @{fruits}    Create List    apple    banana    cherry
    FOR  ${fruit}  IN  @{fruits}
        Log    ${fruit}
    END
    
    
*** Keywords ***
