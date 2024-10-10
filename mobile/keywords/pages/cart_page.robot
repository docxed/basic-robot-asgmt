*** Keywords ***
Get quantity of product in cart
    [Arguments]    ${product_name}    ${expected_quantity}=-1
    ${quantity_of_product_in_cart_locator}    String.Replace string    ${cart_locator.quantity_per_product}    %product_name%    ${product_name}
    IF  "${platform}" == "ios"
        ${expected_quantity}    BuiltIn.Convert to string    ${expected_quantity}
        ${quantity_of_product_in_cart_locator}    String.Replace string    ${quantity_of_product_in_cart_locator}    %expected_quantity%    ${expected_quantity}
    END
    ${quantity_of_product_in_cart}    common.Wait until element is visible and get text    locator=${quantity_of_product_in_cart_locator}
    BuiltIn.Return from keyword    ${quantity_of_product_in_cart}