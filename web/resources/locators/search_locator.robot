*** Settings ***
Resource    ../../keywords/import.robot

*** Variables ***
${search_locator.input_search_text}    xpath=//input[@placeholder='${search_translation.input_search_text}']
${search_locator.button_search}    xpath=//button[span[@aria-label='search']]
${search_locator.product_result_list}    xpath=//div[@class='product-card-container']/div/div
${search_locator.button_add_to_cart}    xpath=//button[span[text()='${search_translation.add_to_cart}']]
${search_locator.product_name}    xpath=(//div[@class='product-card-container']//div[@class='ant-card-meta-title'][text()='%product_name%'])[1]/../../../..
