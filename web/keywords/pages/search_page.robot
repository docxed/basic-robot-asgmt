*** Settings ***
Resource    ../import.robot

*** Keywords ***
Product search
    [Arguments]    ${search_text}
    SeleniumLibrary.Wait until element is visible    locator=${search_locator.input_search_text}
    SeleniumLibrary.Input text    locator=${search_locator.input_search_text}   text=${search_text}
    SeleniumLibrary.Click button    locator=${search_locator.button_search}
    SeleniumLibrary.Wait until element is visible    locator=${search_locator.product_result_list}
    
Open product detail
    [Arguments]    ${product_name}
    ${product_locator}    String.Replace string    ${search_locator.product_name}    %product_name%    ${product_name}
    SeleniumLibrary.Click element    locator=${product_locator}
    SeleniumLibrary.Wait until element is visible    locator=${search_locator.button_add_to_cart}
    
Add product to cart
    SeleniumLibrary.Click button    locator=${search_locator.button_add_to_cart}
    home_page.Confirm action
