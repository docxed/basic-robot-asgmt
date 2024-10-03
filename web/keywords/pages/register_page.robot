*** Settings ***
Resource    ../import.robot

*** Keywords ***
Open Register Page
    home_page.Open User Menu
    SeleniumLibrary.Wait Until Element Is Visible    locator=${register_locator.button_signup}
    SeleniumLibrary.Click Button    locator=${register_locator.button_signup}

Input Register
    [Arguments]    ${username}    ${password}   ${confirm_password}
    SeleniumLibrary.Wait Until Element Is Visible    locator=${register_locator.button_action_signup}
    SeleniumLibrary.Input Text    locator=${register_locator.input_username}    text=${username}
    SeleniumLibrary.Input Password    locator=${register_locator.input_password}    password=${password}
    SeleniumLibrary.Input Password    locator=${register_locator.input_confirm_password}    password=${confirm_password}

Submit Register
    SeleniumLibrary.Click Button    locator=${register_locator.button_action_signup}
    home_page.Confirm Action
