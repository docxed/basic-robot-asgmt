*** Keywords ***
Wait my order page
    SeleniumLibrary.Wait until element is visible    locator=${myorder_verify_locator.text_my_order}

Choose status to open my order list
    [Arguments]    ${status}
    common.Replace locator string and wait until element is visible and click element    locator=${myorder_verify_locator.text_status}    search_for=%status%    replace_with=${status}

Wait order table in column
    common.Replace locator string and wait until element is visible    locator=${myorder_verify_locator.order_table_in_column}    search_for=%order_column%    replace_with=${myorder_translation.order_table.column.order_id}

Verify that order id should be in my order list
    [Arguments]    ${order_id}
    common.Replace locator string and wait until element is visible    locator=${myorder_verify_locator.order_table_in_row}    search_for=%order_id%    replace_with=${order_id}
    
