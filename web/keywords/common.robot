*** Keywords ***
Open browser and maximize
    [Arguments]    ${url}
    SeleniumLibrary.Open browser    url=${url}    browser=gc
    SeleniumLibrary.Maximize browser window

Close browser
    SeleniumLibrary.Close browser

Wait until element is visible and input text
    [Arguments]    ${locator}    ${text}
    SeleniumLibrary.Wait until element is visible    locator=${locator}
    SeleniumLibrary.Input text    locator=${locator}    text=${text}

Wait until element is visible and click button
    [Arguments]    ${locator}
    SeleniumLibrary.Wait until element is visible    locator=${locator}
    SeleniumLibrary.Click button    locator=${locator}

Wait until element is visible and click element
    [Arguments]    ${locator}
    SeleniumLibrary.Wait until element is visible    locator=${locator}
    SeleniumLibrary.Click element    locator=${locator}