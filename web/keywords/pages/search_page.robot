*** Settings ***
Resource    ../import.robot

*** Keywords ***
Product Search
    [Arguments]    ${search_text}
    SeleniumLibrary.Wait Until Element Is Visible    locator=${search_locator.input_search_text}
    SeleniumLibrary.Input Text    locator=${search_locator.input_search_text}   text=${search_text}
    SeleniumLibrary.Click Button    locator=${search_locator.button_search}
    SeleniumLibrary.Wait Until Element Is Visible    locator=${search_locator.product_result_list}
    
Open Product Detail
    [Arguments]    ${product_name}
    ${product_locator}    String.Replace String    ${search_locator.product_name}    %product_name%    ${product_name}
    SeleniumLibrary.Click Element    locator=${product_locator}
    SeleniumLibrary.Wait Until Element Is Visible    locator=${search_locator.button_add_to_cart}
    
Add Product To Cart
    SeleniumLibrary.Click Button    locator=${search_locator.button_add_to_cart}
    home_page.Confirm Action
