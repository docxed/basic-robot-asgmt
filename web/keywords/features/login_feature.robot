*** Settings ***
Resource    ../import.robot

*** Keywords ***
Login User
    [Arguments]    ${username}    ${password}
    login_page.Open Login Page
    login_page.Input Login    username=${username}    password=${password}
    login_page.Submit Login