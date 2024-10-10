*** Keywords ***
Verify that order should be in status
    [Arguments]    ${order_id}    ${status}
    home_page.Open user menu
    myorder_verify_page.Wait my order page
    myorder_verify_page.Choose status to open my order list    status=${status}
    myorder_verify_page.Wait order table in column
    myorder_verify_page.Verify that order id should be in my order list    order_id=${order_id}
