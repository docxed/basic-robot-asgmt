*** Settings ***
Resource    ../import.robot

*** Keywords ***
Search for product and add to cart
    [Arguments]    ${search_text}    ${product_name}
    search_page.Product search    search_text=${search_text}
    search_page.Open product detail    product_name=${product_name}
    search_page.Add product to cart