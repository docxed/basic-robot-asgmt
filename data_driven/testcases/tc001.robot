*** Settings ***
Resource    ../keywords/import.robot

Library    DataDriver    file=./resources/testdata/csv/login_data_scenario.csv   dialect=excel

Test Template    Test login scenario
Test Setup    common.Open browser and maximize    url=${URL}
Test Teardown    common.Close browser

*** Keywords ***
Test login scenario
    [Arguments]    ${username}    ${password}    ${expect_mesage}
    login_feature.Login user and verify message   username=${username}    password=${password}    expect_mesage=${expect_mesage}    

*** Test Cases ***
TC001