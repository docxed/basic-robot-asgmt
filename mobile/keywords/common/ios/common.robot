*** Keywords ***
Open application
    [Arguments]    ${application_info}
    AppiumLibrary.Open application    remote_url=${application_info}[remote_url]
    ...    platformName=${application_info}[platformName]
    ...    deviceName=${application_info}[deviceName]
    ...    udid=${application_info}[udid]
    ...    automationName=${application_info}[automationName]
    ...    app=${application_info}[app]