*** Keywords ***
Open my order page
    home_page.Open user menu
    SeleniumLibrary.Wait until element is visible    locator=${myorder_verify_locator.text_my_order}

Choose status to open my order list
    [Arguments]    ${status}
    ${status_locator}    String.Replace string    ${myorder_verify_locator.text_status}    %status%    ${status}
    common.Wait until element is visible and click element    locator=${status_locator}
    ${order_table_in_column_locator}    String.Replace string    ${myorder_verify_locator.order_table_in_column}    %order_column%    ${myorder_translation.order_table.column.order_id}
    SeleniumLibrary.Wait until element is visible    locator=${order_table_in_column_locator}

Verify that order id should be in my order list
    [Arguments]    ${order_id}
    ${order_id_locator}    String.Replace string    ${myorder_verify_locator.order_table_in_row}    %order_id%    ${order_id}
    SeleniumLibrary.Wait until element is visible    locator=${order_id_locator}
    
