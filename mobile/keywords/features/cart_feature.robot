*** Keywords ***
Verify items in cart quantity should be expected
    [Arguments]    ${product_name}    ${expected_quantity}
    ${quantity_of_product_in_cart}    cart_page.Get quantity of product in cart    product_name=${product_name}    expected_quantity=${expected_quantity}
    BuiltIn.Should be equal    "${quantity_of_product_in_cart}"    "${expected_quantity}"    msg=Quantity of items in cart is not as expected ${expected_quantity} but ${quantity_of_product_in_cart}