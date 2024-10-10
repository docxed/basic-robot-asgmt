*** Keywords ***
Login user
    [Arguments]    ${username}    ${password}
    home_page.Open user menu
    login_page.Wait login page
    login_page.Input username    username=${username}
    login_page.Input password    password=${password}
    login_page.Submit login button
    home_page.Confirm action
