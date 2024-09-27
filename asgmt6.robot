*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC_001
    Set Global Variable    ${GLOBAL_VAR}    Global Value
    Log    ${GLOBAL_VAR}
    Use Local Variable
    # Log    ${LOCAL_VAR}
    

*** Keywords ***
Use Local Variable
    Set Local Variable    ${LOCAL_VAR}    Local Value
    Log    ${LOCAL_VAR}

    
    