*** Settings ***
Resource    ../import.robot

*** Keywords ***
Open Checkout Page
    home_page.Open Shopping Cart
    SeleniumLibrary.Wait Until Element Is Visible    locator=${checkout_locator.div_product_detail}

Input User Address
    [Arguments]    ${name}    ${surname}    ${address}    ${phone}
    SeleniumLibrary.Input Text    locator=${checkout_locator.input_address_name}    text=${name}
    SeleniumLibrary.Input Text    locator=${checkout_locator.input_address_surname}    text=${surname}
    SeleniumLibrary.Input Text    locator=${checkout_locator.input_address_address}    text=${address}
    SeleniumLibrary.Input Text    locator=${checkout_locator.input_address_phone}    text=${phone}

Submit Pay
    SeleniumLibrary.Click Button    locator=${checkout_locator.button_pay}

Select Payment Method
    SeleniumLibrary.Wait Until Element Is Visible    locator=${checkout_locator.h1_select_payment_method}
    SeleniumLibrary.Click Element    locator=${checkout_locator.radio_credit_card}
    SeleniumLibrary.Click Button    locator=${checkout_locator.button_next}

Input Payment Details
    [Arguments]    ${credit_card_number}    ${credit_card_expiry}    ${credit_card_cvc}    ${credit_card_owner}
    SeleniumLibrary.Wait Until Element Is Visible    locator=${checkout_locator.h1_payment_details}
    SeleniumLibrary.Input Text    locator=${checkout_locator.input_credit_card_number}    text=${credit_card_number}
    SeleniumLibrary.Input Text    locator=${checkout_locator.input_credit_card_expiry}    text=${credit_card_expiry}
    SeleniumLibrary.Input Text    locator=${checkout_locator.input_credit_card_cvc}    text=${credit_card_cvc}
    SeleniumLibrary.Input Text    locator=${checkout_locator.input_credit_card_owner}    text=${credit_card_owner}
    
Submit Payment
    SeleniumLibrary.Click Button    locator=${checkout_locator.button_confirm_payment}
    home_page.Confirm Action
    SeleniumLibrary.Wait Until Element Is Visible    locator=${checkout_locator.div_payment_complete}

Verify Checkout
    home_page.Open User Menu
    SeleniumLibrary.Wait Until Element Is Visible    locator=${checkout_locator.div_my_order}
    SeleniumLibrary.Click Element    locator=${checkout_locator.div_preparing}
    SeleniumLibrary.Element Should Be Visible    locator=${checkout_locator.tr_order}
