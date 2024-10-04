*** Settings ***
Resource    ../import.robot

*** Keywords ***
Open register page
    home_page.Open user menu
    SeleniumLibrary.Wait until element is visible    locator=${register_locator.button_signup}
    SeleniumLibrary.Click button    locator=${register_locator.button_signup}

Input register
    [Arguments]    ${username}    ${password}   ${confirm_password}
    SeleniumLibrary.Wait until element is visible    locator=${register_locator.button_action_signup}
    SeleniumLibrary.Input text    locator=${register_locator.input_username}    text=${username}
    SeleniumLibrary.Input password    locator=${register_locator.input_password}    password=${password}
    SeleniumLibrary.Input password    locator=${register_locator.input_confirm_password}    password=${confirm_password}

Submit register
    SeleniumLibrary.Click button    locator=${register_locator.button_action_signup}
    home_page.Confirm action
