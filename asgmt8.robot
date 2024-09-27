*** Settings ***
Library    SeleniumLibrary
Variables    ./yaml/config.yaml

*** Variables ***

*** Test Cases ***
TC_001
    Open Browser    url=${app_url}    browser=chrome
    Input Text    username_field    ${credentials.username}
    Input Password    password_field    ${credentials.password123}

*** Keywords ***
