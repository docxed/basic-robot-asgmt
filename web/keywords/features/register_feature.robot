*** Settings ***
Resource    ../import.robot

*** Keywords ***
Register user
    [Arguments]    ${username}    ${password}    ${confirm_password}
    register_page.Open register page
    register_page.Input register    username=${username}    password=${password}    confirm_password=${confirm_password}
    register_page.Submit register
    