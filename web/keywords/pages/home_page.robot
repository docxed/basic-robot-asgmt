*** Keywords ***
Open home menu
    common.Wait until element is visible and click element    locator=${home_locator.menu_home}

Open user menu
    common.Wait until element is visible and click element    locator=${home_locator.menu_user}

Open shopping cart
    common.Wait until element is visible and click element    locator=${home_locator.menu_cart}

Confirm action
    common.Wait until element is visible and click button    locator=${home_locator.button_ok}

Logout
    Open user menu
    common.Wait until element is visible and click button    locator=${home_locator.button_logout}