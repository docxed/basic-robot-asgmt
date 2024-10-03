*** Settings ***
Resource    ../keywords/import.robot

Suite Setup    common.Open Browser And Maximize    url=${URL}
Suite Teardown    common.Close Browser

*** Test Cases ***
TC_001 Register New User
    [Tags]    register
    register_feature.Register User    username=${tc001.login.username}    password=${tc001.login.password}    confirm_password=${tc001.login.password}
    home_page.Logout

TC_002 Login Search And Checkout
    login_feature.Login User    username=${tc001.login.username}    password=${tc001.login.password}
    product_search_feature.Search For Product And Add To Cart    search_text=${tc001.search.keyword}    product_name=${tc001.search.product_name}
    checkout_feature.Fill Delivery Info And Select Payment Method And Pay    
    ...    name=${tc001.user_delivery.name}    surname=${tc001.user_delivery.surname}    address=${tc001.user_delivery.address}    phone=${tc001.user_delivery.phone}
    ...    payment_method=${tc001.payment_method.credit_card}
    ...    credit_card_number=${tc001.credit_card.number}    credit_card_expiry=${tc001.credit_card.expiry}    credit_card_cvc=${tc001.credit_card.cvc}    credit_card_owner=${tc001.credit_card.owner}
    checkout_feature.Verify That Order Should Be Prepared
    home_page.Logout