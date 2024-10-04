*** Settings ***
Resource    ../import.robot

*** Keywords ***
Open login page
    home_page.Open user menu
    
Input login
    [Arguments]    ${username}    ${password}
    SeleniumLibrary.Wait until element is visible    locator=${login_locator.button_action_login}
    SeleniumLibrary.Input text    locator=${login_locator.input_username}   text=${username}
    SeleniumLibrary.Input password    locator=${login_locator.input_password}    password=${password}

Submit login
    SeleniumLibrary.Click button    locator=${login_locator.button_action_login}
    home_page.Confirm action
    