*** Keywords ***
Select product and add to cart
    [Arguments]    ${product_name}
    product_detail_page.Open product detail    ${product_name}
    product_detail_page.Add product to cart