*** Settings ***
Resource    ../import.robot

*** Keywords ***
Open Login Page
    home_page.Open User Menu
    
Input Login
    [Arguments]    ${username}    ${password}
    SeleniumLibrary.Wait Until Element Is Visible    locator=${login_locator.button_action_login}
    SeleniumLibrary.Input Text    locator=${login_locator.input_username}   text=${username}
    SeleniumLibrary.Input Password    locator=${login_locator.input_password}    password=${password}

Submit Login
    SeleniumLibrary.Click Button    locator=${login_locator.button_action_login}
    home_page.Confirm Action
    