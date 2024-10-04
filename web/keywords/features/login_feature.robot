*** Settings ***
Resource    ../import.robot

*** Keywords ***
Login user
    [Arguments]    ${username}    ${password}
    login_page.Open login page
    login_page.Input login    username=${username}    password=${password}
    login_page.Submit login