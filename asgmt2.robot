*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC_001
    Print Fruits    fruits=    Apple    Banana    Orange

*** Keywords ***
Print Fruits
    [Arguments]    @{fruits}
    FOR  ${fruit}  IN  @{fruits}
        Log    ${fruit}
    END
    