*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Example Test With Setup And Teardown
    [Setup]    Open Browser    http://example.com    chrome
    [Teardown]    Close Browser
    Log    Test is running
    
*** Keywords ***

    