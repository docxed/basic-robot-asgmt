*** Settings ***
Resource    ../import.robot

*** Keywords ***
Fill Delivery Info And Select Payment Method And Pay
    [Arguments]    ${name}    ${surname}    ${address}    ${phone}    ${payment_method}    ${credit_card_number}    ${credit_card_expiry}    ${credit_card_cvc}    ${credit_card_owner}
    checkout_page.Open Checkout Page
    checkout_page.Input User Address    name=${name}    surname=${surname}    address=${address}    phone=${phone}
    checkout_page.Submit Pay
    checkout_page.Select Payment Method    payment_method=${payment_method}
    checkout_page.Input Payment Details    credit_card_number=${credit_card_number}    credit_card_expiry=${credit_card_expiry}    credit_card_cvc=${credit_card_cvc}    credit_card_owner=${credit_card_owner}
    checkout_page.Submit Payment

Verify That Order Should Be Prepared
    checkout_page.Verify That Order Should Be Prepared