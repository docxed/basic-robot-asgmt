*** Keywords ***
Register user
    [Arguments]    ${username}    ${password}    ${confirm_password}
    home_page.Open user menu
    register_page.Click register button on login page
    register_page.Wait register page
    register_page.Input username    username=${username}
    register_page.Input password    password=${password}
    register_page.Input confirm password    confirm_password=${confirm_password}
    register_page.Submit register button
    home_page.Confirm action
