*** Variables ***
${myorder_verify_locator.text_my_order}    xpath=//div[text()='${myorder_translation.my_order}']
${myorder_verify_locator.text_status}    xpath=//div[text()='%status%']
${myorder_verify_locator.order_table_in_column}    xpath=//table//tr/th[text()='%order_column%']
${myorder_verify_locator.order_table_in_row}    xpath=//table//td[text()='%order_id%']