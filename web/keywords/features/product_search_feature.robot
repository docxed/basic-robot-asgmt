*** Settings ***
Resource    ../import.robot

*** Keywords ***
Search And Add To Cart
    [Arguments]    ${search_text}
    search_page.Product Search    search_text=${search_text}
    search_page.Add To Cart