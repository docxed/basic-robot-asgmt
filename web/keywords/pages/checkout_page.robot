*** Settings ***
Resource    ../import.robot

*** Keywords ***
Open checkout page
    home_page.Open shopping cart
    SeleniumLibrary.Wait until element is visible    locator=${checkout_locator.div_product_detail}

Input user address
    [Arguments]    ${name}    ${surname}    ${address}    ${phone}
    SeleniumLibrary.Input text    locator=${checkout_locator.input_address_name}    text=${name}
    SeleniumLibrary.Input text    locator=${checkout_locator.input_address_surname}    text=${surname}
    SeleniumLibrary.Input text    locator=${checkout_locator.input_address_address}    text=${address}
    SeleniumLibrary.Input text    locator=${checkout_locator.input_address_phone}    text=${phone}

Submit pay
    SeleniumLibrary.Click button    locator=${checkout_locator.button_pay}

Select payment method
    [Arguments]    ${payment_method}
    SeleniumLibrary.Wait until element is visible    locator=${checkout_locator.h1_select_payment_method}
    ${input_radio_locator}    String.Replace string    ${checkout_locator.radio_payment_method}    %payment_method%    ${payment_method}
    SeleniumLibrary.Click element    locator=${input_radio_locator}
    SeleniumLibrary.Click button    locator=${checkout_locator.button_next}

Input payment details
    [Arguments]    ${credit_card_number}    ${credit_card_expiry}    ${credit_card_cvc}    ${credit_card_owner}
    SeleniumLibrary.Wait until element is visible    locator=${checkout_locator.h1_payment_details}
    SeleniumLibrary.Input text    locator=${checkout_locator.input_credit_card_number}    text=${credit_card_number}
    SeleniumLibrary.Input text    locator=${checkout_locator.input_credit_card_expiry}    text=${credit_card_expiry}
    SeleniumLibrary.Input text    locator=${checkout_locator.input_credit_card_cvc}    text=${credit_card_cvc}
    SeleniumLibrary.Input text    locator=${checkout_locator.input_credit_card_owner}    text=${credit_card_owner}
    
Submit payment
    SeleniumLibrary.Click button    locator=${checkout_locator.button_confirm_payment}
    home_page.Confirm action
    SeleniumLibrary.Wait until element is visible    locator=${checkout_locator.div_payment_complete}

Verify that order should be prepared
    home_page.Open user menu
    SeleniumLibrary.Wait until element is visible    locator=${checkout_locator.div_my_order}
    SeleniumLibrary.Click element    locator=${checkout_locator.div_preparing}
    SeleniumLibrary.Element should be visible    locator=${checkout_locator.tr_order}
