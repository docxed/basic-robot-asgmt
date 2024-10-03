*** Settings ***
Resource    ../import.robot

*** Keywords ***
Register User
    [Arguments]    ${username}    ${password}    ${confirm_password}
    register_page.Open Register Page
    register_page.Input Register    username=${username}    password=${password}    confirm_password=${confirm_password}
    register_page.Submit Register
    