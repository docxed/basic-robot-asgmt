*** Settings ***
Resource    ../import.robot

*** Keywords ***
Verify order status
    [Arguments]    ${order_id}    ${status_locator}
    home_page.Open user menu
    SeleniumLibrary.Wait until element is visible    ${verify_locator.text_my_order}
    SeleniumLibrary.Wait until element is visible    ${status_locator}
    SeleniumLibrary.Click element    ${status_locator}
    SeleniumLibrary.Wait until element is visible    ${verify_locator.order_table_td_1}
    
    @{elements_of_order_table}    SeleniumLibrary.Get webelements    locator=${verify_locator.order_table_td_1}
    ${found}    Set variable    ${FALSE}
    FOR  ${element}  IN  @{elements_of_order_table}
        ${order_id_in_table}    SeleniumLibrary.Get text    locator=${element}
        IF  ${order_id_in_table} == ${order_id}
            ${found}    Builtin.Set variable    ${TRUE}
            Builtin.Exit for loop
        END
    END
    Builtin.Should be true    ${found}    msg=Order ${order_id} not found in ${status_locator}

Verify that order should be pending
    [Arguments]    ${order_id}
    Verify order status    order_id=${order_id}    status_locator=${verify_locator.text_status_pending_payment}

Verify that order should be prepared
    [Arguments]    ${order_id}
    Verify order status    order_id=${order_id}    status_locator=${verify_locator.text_status_preparing}