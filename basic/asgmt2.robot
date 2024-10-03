*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC_001
    Print Fruits    Apple    Banana    Orange

*** Keywords ***
Print Fruits
    [Arguments]    @{fruits}
    # Log To Console    ${fruits}[0]
    FOR  ${fruit}  IN  @{fruits}
        Log To Console    ${fruit}
    END
    