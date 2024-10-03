*** Settings ***
Library    SeleniumLibrary

*** Variables ***
@{hero}    ironman    batman    captain    superman    hulk    shazam    thor    flash    blackwidow    wonder woman    hawkeye

*** Test Cases ***
Log Hero
    ${i}    Evaluate    0
    FOR  ${name}  IN  @{hero}
        Run Keyword If    ${i} % 2 == 0    Log    ${name}
        ${i}    Evaluate    ${i} + 1
        Exit For Loop If    "${name}" == "blackwidow"
    END
    
*** Keywords ***
