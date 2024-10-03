*** Settings ***
Resource    ../import.robot

*** Keywords ***
Open User Menu
    SeleniumLibrary.Wait Until Element Is Visible    locator=${home_locator.menu_user}
    SeleniumLibrary.Click Element    locator=${home_locator.menu_user} 

Open Shopping Cart
    SeleniumLibrary.Wait Until Element Is Visible    locator=${home_locator.menu_cart}
    SeleniumLibrary.Click Element    locator=${home_locator.menu_cart}

Confirm Action
    SeleniumLibrary.Wait Until Element Is Visible    locator=${home_locator.button_ok} 
    SeleniumLibrary.Click Button    locator=${home_locator.button_ok}

Logout
    Open User Menu
    SeleniumLibrary.Click Button    locator=${home_locator.button_logout}