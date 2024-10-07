*** Keywords ***
Open login page
    home_page.Open user menu
    SeleniumLibrary.Wait until element is visible    locator=${login_locator.button_action_login}
    
Input username
    [Arguments]    ${username}
    common.Wait until element is visible and input text    locator=${login_locator.input_username}    text=${username}

Input password
    [Arguments]    ${password}
    common.Wait until element is visible and input text    locator=${login_locator.input_password}    text=${password}

Submit login button
    common.Wait until element is visible and click button    locator=${login_locator.button_action_login}
