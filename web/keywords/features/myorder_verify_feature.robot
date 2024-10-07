*** Keywords ***
Verify that order should be in status
    [Arguments]    ${order_id}    ${status}
    myorder_verify_page.Open my order page
    myorder_verify_page.Choose status to open my order list    status=${status}
    myorder_verify_page.Verify that order id should be in my order list    order_id=${order_id}
