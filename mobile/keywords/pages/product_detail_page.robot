*** Keywords ***
Open product detail
    [Arguments]    ${product_name}
    common.Replace locator string and wait until element is visible and tap    locator=${product_detail_locator.add_to_cart}    search_for=%product_name%    replace_with=${product_name}

Add product to cart
    common.Wait until element is visible and tap    locator=${product_detail_locator.button_add_to_cart}

