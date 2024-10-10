*** Keywords ***
Click register button on login page
    common.Wait until element is visible and click button    locator=${register_locator.button_signup}

Wait register page
    SeleniumLibrary.Wait until element is visible    locator=${register_locator.button_action_signup}

Input username
    [Arguments]    ${username}
    common.Wait until element is visible and input text    locator=${register_locator.input_username}    text=${username}

Input password
    [Arguments]    ${password}
    common.Wait until element is visible and input text    locator=${register_locator.input_password}    text=${password}

Input confirm password
    [Arguments]    ${confirm_password}
    common.Wait until element is visible and input text    locator=${register_locator.input_confirm_password}    text=${confirm_password}

Submit register button
    common.Wait until element is visible and click button    locator=${register_locator.button_action_signup}



