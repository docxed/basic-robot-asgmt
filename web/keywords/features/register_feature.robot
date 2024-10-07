*** Keywords ***
Register user
    [Arguments]    ${username}    ${password}    ${confirm_password}
    register_page.Open register page
    register_page.Input username    username=${username}
    register_page.Input password    password=${password}
    register_page.Input confirm password    confirm_password=${confirm_password}
    register_page.Submit register button
    home_page.Confirm action
