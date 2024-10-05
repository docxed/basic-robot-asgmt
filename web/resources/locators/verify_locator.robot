*** Settings ***
Resource    ../../keywords/import.robot

*** Variables ***
# Verify Checkout
${verify_locator.text_my_order}    xpath=//div[text()='${myorder_translation.my_order}']
${verify_locator.text_status_pending_payment}    xpath=//div[text()='${myorder_translation.pending_payment}']
${verify_locator.text_status_preparing}    xpath=//div[text()='${myorder_translation.preparing}']
${verify_locator.order_table_td_1}    xpath=//table//tr/td[1]