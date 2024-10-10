*** Keywords ***
Login user and verify message
    [Arguments]    ${username}    ${password}    ${expect_mesage}
    home_page.Open user menu
    login_page.Wait login page
    login_page.Input username    username=${username}
    login_page.Input password    password=${password}
    login_page.Submit login button
    ${text}    login_page.Get login message
    BuiltIn.Should be equal    ${text}    ${expect_mesage}    msg=Login message is not correct ${text} != ${expect_mesage}


