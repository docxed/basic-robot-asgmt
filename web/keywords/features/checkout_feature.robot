*** Settings ***
Resource    ../import.robot

*** Keywords ***
Checkout
    [Arguments]    ${name}    ${surname}    ${address}    ${phone}    ${credit_card_number}    ${credit_card_expiry}    ${credit_card_cvc}    ${credit_card_owner}
    checkout_page.Open Checkout Page
    checkout_page.Input User Address    name=${name}    surname=${surname}    address=${address}    phone=${phone}
    checkout_page.Submit Pay
    checkout_page.Select Payment Method
    checkout_page.Input Payment Details    credit_card_number=${credit_card_number}    credit_card_expiry=${credit_card_expiry}    credit_card_cvc=${credit_card_cvc}    credit_card_owner=${credit_card_owner}
    checkout_page.Submit Payment

Verify Checkout
    checkout_page.Verify Checkout