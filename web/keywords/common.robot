*** Settings ***
Resource    ./import.robot

*** Keywords ***
Open browser and maximize
    [Arguments]    ${url}
    SeleniumLibrary.Open browser    url=${url}    browser=gc
    SeleniumLibrary.Maximize browser window
    # Set selenium speed    .2s    Speed When Running Tests

Close browser
    SeleniumLibrary.Close browser