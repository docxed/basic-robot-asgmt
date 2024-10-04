*** Settings ***
Resource    ../import.robot

*** Keywords ***
Open user menu
    SeleniumLibrary.Wait until element is visible    locator=${home_locator.menu_user}
    SeleniumLibrary.Click element    locator=${home_locator.menu_user} 

Open shopping cart
    SeleniumLibrary.Wait until element is visible    locator=${home_locator.menu_cart}
    SeleniumLibrary.Click element    locator=${home_locator.menu_cart}

Confirm action
    SeleniumLibrary.Wait until element is visible    locator=${home_locator.button_ok} 
    SeleniumLibrary.Click button    locator=${home_locator.button_ok}

Logout
    Open user menu
    SeleniumLibrary.Click button    locator=${home_locator.button_logout}