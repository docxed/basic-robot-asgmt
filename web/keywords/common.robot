*** Settings ***
Resource    ./import.robot

*** Keywords ***
Open browser and maximize
    [Arguments]    ${url}
    SeleniumLibrary.Open browser    url=${url}    browser=gc
    SeleniumLibrary.Maximize browser window

Close browser
    SeleniumLibrary.Close browser