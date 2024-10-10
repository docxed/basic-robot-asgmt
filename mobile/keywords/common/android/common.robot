*** Keywords ***
Open application
    [Arguments]    ${application_info}
    AppiumLibrary.Open application    remote_url=${application_info}[remote_url]
    ...    platformName=${application_info}[platformName]
    ...    platformVersion=${application_info}[platformVersion]
    ...    deviceName=${application_info}[deviceName]
    ...    appPackage=${application_info}[appPackage]
    ...    appActivity=${application_info}[appActivity]
    ...    automationName=${application_info}[automationName]
