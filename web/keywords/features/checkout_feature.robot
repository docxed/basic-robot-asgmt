*** Settings ***
Resource    ../import.robot

*** Keywords ***
Fill delivery info and select payment method and pay
    [Arguments]    ${name}    ${surname}    ${address}    ${phone}    ${payment_method}    ${credit_card_number}    ${credit_card_expiry}    ${credit_card_cvc}    ${credit_card_owner}
    checkout_page.Open checkout page
    checkout_page.Input user address    name=${name}    surname=${surname}    address=${address}    phone=${phone}
    checkout_page.Submit pay
    checkout_page.Select payment method    payment_method=${payment_method}
    checkout_page.Input payment details    credit_card_number=${credit_card_number}    credit_card_expiry=${credit_card_expiry}    credit_card_cvc=${credit_card_cvc}    credit_card_owner=${credit_card_owner}
    ${order_id}    checkout_page.Submit payment
    Return from keyword    ${order_id}