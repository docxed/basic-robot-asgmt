*** Variables ***
${product_checkout_locator.product_detail}    xpath=//div[contains(@class, 'product-detail')]
${product_checkout_locator.button_pay}    xpath=//button[span[text()='${checkout_translation.pay}']]
${product_checkout_locator.input_address_name}    id=form_item_name
${product_checkout_locator.input_address_surname}    id=form_item_surName
${product_checkout_locator.input_address_address}    id=form_item_address
${product_checkout_locator.input_address_phone}    id=form_item_phone

${product_checkout_locator.h1_text_select_payment_method}    xpath=//h1[text()='${checkout_translation.select_payment_method}']
${product_checkout_locator.radio_payment_method}    xpath=//input[@type='radio' and @value='%payment_method%']
${product_checkout_locator.button_next}    xpath=//button[span[text()='${home_translation.next}']]

${product_checkout_locator.h1_text_payment_details}    xpath=//h1[text()='${checkout_translation.payment_details}']
${product_checkout_locator.input_credit_card_number}    id=basic_bin
${product_checkout_locator.input_credit_card_expiry}    id=basic_exp
${product_checkout_locator.input_credit_card_cvc}    id=basic_cvc
${product_checkout_locator.input_credit_card_owner}    id=basic_owner

${product_checkout_locator.button_confirm_payment}    xpath=//button[span[text()='${checkout_translation.confirm_payment}']]
${product_checkout_locator.text_payment_complete}    xpath=//div[text()=' ${checkout_translation.payment_complete} ']
${product_checkout_locator.text_success_description}    xpath=//div[contains(@class, 'success-description')]