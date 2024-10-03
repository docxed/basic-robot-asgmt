*** Settings ***
Resource    ../import.robot

*** Keywords ***
Product Search
    [Arguments]    ${search_text}
    SeleniumLibrary.Wait Until Element Is Visible    locator=${search_locator.input_search_text}
    SeleniumLibrary.Input Text    locator=${search_locator.input_search_text}   text=${search_text}
    SeleniumLibrary.Click Button    locator=${search_locator.button_search}
    SeleniumLibrary.Wait Until Element Is Visible    locator=${search_locator.product_card}
    SeleniumLibrary.Click Element    locator=${search_locator.product_card}
    
Add To Cart
    SeleniumLibrary.Wait Until Element Is Visible    locator=${search_locator.button_add_to_cart}
    SeleniumLibrary.Click Button    locator=${search_locator.button_add_to_cart}
    home_page.Confirm Action
