*** Variables ***
${product_search_locator.input_search_text}    xpath=//input[@placeholder='${search_translation.input_search_text}']
${product_search_locator.button_search}    xpath=//button[span[@aria-label='search']]
${product_search_locator.product_result_list}    xpath=//div[contains(@class, 'product-card-container')]/div/div
${product_search_locator.button_add_to_cart}    xpath=//button[span[text()='${search_translation.add_to_cart}']]
${product_search_locator.product_name}    xpath=(//div[contains(@class, 'product-card-container')]//div[contains(@class, 'title')][text()='%product_name%'])[1]