*** Settings ***
Resource    ../import.robot

*** Keywords ***
Verify that order should be pending
    [Arguments]    ${order_id}
    verify_page.Verify that order should be pending    order_id=${order_id}

Verify that order should be prepared
    [Arguments]    ${order_id}
    verify_page.Verify that order should be prepared    order_id=${order_id}
