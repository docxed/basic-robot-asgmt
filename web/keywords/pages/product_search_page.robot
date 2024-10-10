*** Keywords ***
Wait product search page
    SeleniumLibrary.Wait until element is visible    locator=${product_search_locator.input_search_text}

Input search text
    [Arguments]    ${search_text}
    common.Wait until element is visible and input text    locator=${product_search_locator.input_search_text}    text=${search_text}

Submit search button
    common.Wait until element is visible and click button    locator=${product_search_locator.button_search}

Wait product result list
    SeleniumLibrary.Wait until element is visible    locator=${product_search_locator.product_result_list}

Open product detail
    [Arguments]    ${product_name}
    common.Replace locator string and wait until element is visible and click button    locator=${product_search_locator.product_name}    search_for=%product_name%    replace_with=${product_name}

Wait product detail page
    SeleniumLibrary.Wait until element is visible    locator=${product_search_locator.button_add_to_cart}

Add product to cart
    common.Wait until element is visible and click button    locator=${product_search_locator.button_add_to_cart}