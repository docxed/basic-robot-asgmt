*** Settings ***
Resource    ../../keywords/import.robot

*** Variables ***
# Checkout
${checkout_locator.product_detail}    xpath=//div[@class='product-detail']
${checkout_locator.button_pay}    xpath=//button[span[text()='${checkout_translation.pay}']]
${checkout_locator.input_address_name}    id=form_item_name
${checkout_locator.input_address_surname}    id=form_item_surName
${checkout_locator.input_address_address}    id=form_item_address
${checkout_locator.input_address_phone}    id=form_item_phone

# Select Payment Method
${checkout_locator.h1_text_select_payment_method}    xpath=//h1[text()='Select Payment Method']
${checkout_locator.radio_payment_method}    xpath=//input[@type='radio' and @value='%payment_method%']
${checkout_locator.button_next}    xpath=//button[span[text()='${home_translation.next}']]

# Enter Payment Details
${checkout_locator.h1_text_payment_details}    xpath=//h1[text()='${checkout_translation.payment_details}']
${checkout_locator.input_credit_card_number}    id=basic_bin
${checkout_locator.input_credit_card_expiry}    id=basic_exp
${checkout_locator.input_credit_card_cvc}    id=basic_cvc
${checkout_locator.input_credit_card_owner}    id=basic_owner

# Submit Payment
${checkout_locator.button_confirm_payment}    xpath=//button[span[text()='${checkout_translation.confirm_payment}']]
${checkout_locator.text_payment_complete}    xpath=//div[text()=' ${checkout_translation.payment_complete} ']
${checkout_locator.text_success_description}    xpath=//div[@class='success-description']