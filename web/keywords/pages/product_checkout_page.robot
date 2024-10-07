*** Keywords ***
Open checkout page
    home_page.Open shopping cart
    SeleniumLibrary.Wait until element is visible    locator=${product_checkout_locator.product_detail}

Input user address name
    [Arguments]    ${name}
    common.Wait until element is visible and input text    locator=${product_checkout_locator.input_address_name}    text=${name}

Input user address surname
    [Arguments]    ${surname}
    common.Wait until element is visible and input text    locator=${product_checkout_locator.input_address_surname}    text=${surname}

Input user address address
    [Arguments]    ${address}
    common.Wait until element is visible and input text    locator=${product_checkout_locator.input_address_address}    text=${address}

Input user address phone
    [Arguments]    ${phone}
    common.Wait until element is visible and input text    locator=${product_checkout_locator.input_address_phone}    text=${phone}

Submit pay button
    common.Wait until element is visible and click button    locator=${product_checkout_locator.button_pay}
    SeleniumLibrary.Wait until element is visible    locator=${product_checkout_locator.h1_text_select_payment_method}

Select payment method
    [Arguments]    ${payment_method}
    ${input_radio_locator}    String.Replace string    ${product_checkout_locator.radio_payment_method}    %payment_method%    ${payment_method}
    SeleniumLibrary.Click element    locator=${input_radio_locator}
    
Submit next button
    common.Wait until element is visible and click button    locator=${product_checkout_locator.button_next}
    SeleniumLibrary.Wait until element is visible    locator=${product_checkout_locator.h1_text_payment_details}

Input payment details credit card number
    [Arguments]    ${credit_card_number}
    common.Wait until element is visible and input text    locator=${product_checkout_locator.input_credit_card_number}    text=${credit_card_number}

Input payment details credit card expiry
    [Arguments]    ${credit_card_expiry}
    common.Wait until element is visible and input text    locator=${product_checkout_locator.input_credit_card_expiry}    text=${credit_card_expiry}

Input payment details credit card cvc
    [Arguments]    ${credit_card_cvc}
    common.Wait until element is visible and input text    locator=${product_checkout_locator.input_credit_card_cvc}    text=${credit_card_cvc}

Input payment details credit card owner
    [Arguments]    ${credit_card_owner}
    common.Wait until element is visible and input text    locator=${product_checkout_locator.input_credit_card_owner}    text=${credit_card_owner}

Submit payment button
    common.Wait until element is visible and click button    locator=${product_checkout_locator.button_confirm_payment}
    home_page.Confirm action
    SeleniumLibrary.Wait until element is visible    locator=${product_checkout_locator.text_payment_complete}
    SeleniumLibrary.Wait until element is visible    locator=${product_checkout_locator.text_success_description}

Get order id from success description
    ${order_description}    SeleniumLibrary.Get text    locator=${product_checkout_locator.text_success_description}
    @{order_description_split}    String.Split string    ${order_description}    \n
    @{order_id_split}    String.Split string    ${order_description_split}[0]    :
    ${order_id}    String.Strip string    ${order_id_split}[1]
    BuiltIn.Return from keyword    ${order_id}