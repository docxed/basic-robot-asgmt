*** Settings ***
Resource    ../keywords/import.robot

Suite Setup    common.Open Browser And Maximize    url=${URL}
Suite Teardown    common.Close Browser

*** Test Cases ***
TC_001 Register New User
    register_feature.Register User    username=${tc001.login.username}    password=${tc001.login.password}    confirm_password=${tc001.login.password}
    home_page.Logout

TC_002 Login Search And Checkout
    login_feature.Login User    username=${tc001.login.username}    password=${tc001.login.password}
    product_search_feature.Search And Add To Cart    search_text=${tc001.search.keyword}
    checkout_feature.Checkout    name=${tc001.user_delivery.name}    surname=${tc001.user_delivery.surname}    address=${tc001.user_delivery.address}    phone=${tc001.user_delivery.phone}    credit_card_number=${tc001.credit_card.number}    credit_card_expiry=${tc001.credit_card.expiry}    credit_card_cvc=${tc001.credit_card.cvc}    credit_card_owner=${tc001.credit_card.owner}
    checkout_feature.Verify Checkout
    home_page.Logout