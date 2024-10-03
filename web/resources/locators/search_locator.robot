*** Settings ***
Resource    ../../keywords/import.robot

*** Variables ***
${search_locator.input_search_text}    xpath=//input[@placeholder='${search_translation.input_search_text}']
${search_locator.button_search}    xpath=//button[span[@aria-label='search']]
${search_locator.product_card}    xpath=//div[@class='product-card-container']/div/div[1]/div
${search_locator.button_add_to_cart}    xpath=//button[span[text()='${search_translation.add_to_cart}']]