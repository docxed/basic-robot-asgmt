*** Keywords ***
Close application
    AppiumLibrary.Close application

Wait until element is visible and tap
    [Arguments]    ${locator}    ${duration}=${default_tap_duration}    
    AppiumLibrary.Wait until element is visible    locator=${locator}
    &{location}    AppiumLibrary.Get element location    locator=${locator}
    @{first_finger}    BuiltIn.Create list    ${location}[x]    ${location}[y]
    @{finger_positions}    BuiltIn.Create list    ${first_finger}    
    AppiumLibrary.Tap with positions    ${duration}    @{finger_positions}

Wait until element is visible and get text
    [Arguments]    ${locator}
    AppiumLibrary.Wait until element is visible    locator=${locator}
    ${text}    AppiumLibrary.Get text    locator=${locator}
    BuiltIn.Return from keyword    ${text}

Replace locator string and wait until element is visible and tap
    [Arguments]    ${locator}    ${search_for}    ${replace_with}
    ${new_locator}    String.Replace string    ${locator}    ${search_for}    ${replace_with}
    Wait until element is visible and tap    locator=${new_locator}