*** Settings ***
Resource    ../import.robot

*** Keywords ***
Search For Product And Add To Cart
    [Arguments]    ${search_text}    ${product_name}
    search_page.Product Search    search_text=${search_text}
    search_page.Open Product Detail    product_name=${product_name}
    search_page.Add Product To Cart