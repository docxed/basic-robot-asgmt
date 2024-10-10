*** Keywords ***
Search for product and add to cart
    [Arguments]    ${search_text}    ${product_name}
    home_page.Open home menu
    product_search_page.Wait product search page
    product_search_page.Input search text    ${search_text}
    product_search_page.Submit search button
    product_search_page.Wait product result list
    product_search_page.Open product detail    ${product_name}
    product_search_page.Wait product detail page
    product_search_page.Add product to cart
    home_page.Confirm action