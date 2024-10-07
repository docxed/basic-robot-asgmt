*** Keywords ***
Open product search page
    home_page.Open home menu
    SeleniumLibrary.Wait until element is visible    locator=${product_search_locator.input_search_text}

Input search text
    [Arguments]    ${search_text}
    common.Wait until element is visible and input text    locator=${product_search_locator.input_search_text}    text=${search_text}

Submit search button
    common.Wait until element is visible and click button    locator=${product_search_locator.button_search}
    SeleniumLibrary.Wait until element is visible    locator=${product_search_locator.product_result_list}

Open product detail
    [Arguments]    ${product_name}
    ${product_locator}    String.Replace string    ${product_search_locator.product_name}    %product_name%    ${product_name}
    SeleniumLibrary.Click element    locator=${product_locator}
    SeleniumLibrary.Wait until element is visible    locator=${product_search_locator.button_add_to_cart}

Add product to cart
    common.Wait until element is visible and click button    locator=${product_search_locator.button_add_to_cart}