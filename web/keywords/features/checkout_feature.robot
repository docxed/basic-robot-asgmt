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
    checkout_page.Submit payment

Verify that order should be prepared
    checkout_page.Verify that order should be prepared