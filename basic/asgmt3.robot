*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC_001
    Print User Info    name=Akira    age=24    city=Bangkok

*** Keywords ***
Print User Info
    [Arguments]    &{user_info}
    # Log To Console    ${user_info}
    Log    Name: ${user_info}[name]
    Log    Age: ${user_info}[age]
    Log    City: ${user_info}[city]

    # FOR  ${key}  IN  @{user_info}
    #     Log To Console   ${user_info}[${key}]
    # END
    
    