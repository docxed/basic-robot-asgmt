*** Keywords ***
Fill delivery info and select payment method and pay
    [Arguments]    ${delivery_info}    ${payment_method}    ${payment_info}
    home_page.Open shopping cart
    product_checkout_page.Wait checkout page
    product_checkout_page.Input user address name    name=${delivery_info}[name]
    product_checkout_page.Input user address surname    surname=${delivery_info}[surname]
    product_checkout_page.Input user address address    address=${delivery_info}[address]
    product_checkout_page.Input user address phone    phone=${delivery_info}[phone]
    product_checkout_page.Submit pay button
    product_checkout_page.Wait select payment method
    product_checkout_page.Select payment method    payment_method=${payment_method}
    product_checkout_page.Submit next button
    product_checkout_page.Wait payment details
    product_checkout_page.Input payment details credit card number    credit_card_number=${payment_info}[credit_card_number]
    product_checkout_page.Input payment details credit card expiry    credit_card_expiry=${payment_info}[credit_card_expiry]
    product_checkout_page.Input payment details credit card cvc    credit_card_cvc=${payment_info}[credit_card_cvc]
    product_checkout_page.Input payment details credit card owner    credit_card_owner=${payment_info}[credit_card_owner]
    product_checkout_page.Submit payment button
    home_page.Confirm action
    product_checkout_page.Wait payment complete
    ${order_success_description}    product_checkout_page.Get order success description
    ${order_id}    product_checkout_page.Get order id from success description    order_description=${order_success_description}
    BuiltIn.Return from keyword    ${order_id}