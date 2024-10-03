*** Settings ***
Resource    ../../keywords/import.robot

*** Variables ***
# Checkout
${checkout_locator.div_product_detail}    //div[@class='product-detail']
${checkout_locator.button_pay}    //button[span[text()='${checkout_translation.pay}']]
${checkout_locator.input_address_name}    id=form_item_name
${checkout_locator.input_address_surname}    id=form_item_surName
${checkout_locator.input_address_address}    id=form_item_address
${checkout_locator.input_address_phone}    id=form_item_phone

# Select Payment Method
${checkout_locator.h1_select_payment_method}    //h1[text()='Select Payment Method']
${checkout_locator.radio_credit_card}    //input[@type='radio' and @value='creditCard']
${checkout_locator.button_next}    //button[span[text()='${home_translation.next}']]

# Enter Payment Details
${checkout_locator.h1_payment_details}    //h1[text()='${checkout_translation.payment_details}']
${checkout_locator.input_credit_card_number}    id=basic_bin
${checkout_locator.input_credit_card_expiry}    id=basic_exp
${checkout_locator.input_credit_card_cvc}    id=basic_cvc
${checkout_locator.input_credit_card_owner}    id=basic_owner
${checkout_locator.button_confirm_payment}    //button[span[text()='${checkout_translation.confirm_payment}']]
${checkout_locator.div_payment_complete}    //div[text()=' ${checkout_translation.payment_complete} ']

# Verify Checkout
${checkout_locator.div_my_order}    //div[text()='${myorder_translation.my_order}']
${checkout_locator.div_preparing}    //div[text()='${myorder_translation.preparing}']
${checkout_locator.tr_order}    //tr[1]
