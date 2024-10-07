*** Settings ***
Resource    ../keywords/import.robot

Suite Setup    common.Open browser and maximize    url=${URL}
Suite Teardown    common.Close browser

*** Test Cases ***
TC_001 Register new user
    [Tags]    register
    register_feature.Register user    username=${tc001.login.username}    password=${tc001.login.password}    confirm_password=${tc001.login.password}
    home_page.Logout

TC_002 Login search checkout verify and logout
    login_feature.Login user    username=${tc001.login.username}    password=${tc001.login.password}
    product_search_feature.Search for product and add to cart    search_text=${tc001.search.keyword}    product_name=${tc001.search.product_name}
    &{delivery_info}    BuiltIn.Create dictionary    name=${tc001.user_delivery.name}    surname=${tc001.user_delivery.surname}    address=${tc001.user_delivery.address}    phone=${tc001.user_delivery.phone}
    &{payment_info}    BuiltIn.Create dictionary    credit_card_number=${tc001.credit_card.number}    credit_card_expiry=${tc001.credit_card.expiry}    credit_card_cvc=${tc001.credit_card.cvc}    credit_card_owner=${tc001.credit_card.owner}
    ${order_id}    product_checkout_feature.Fill delivery info and select payment method and pay    
    ...    delivery_info=${delivery_info}
    ...    payment_method=${tc001.payment_method.credit_card}
    ...    payment_info=${payment_info}
    myorder_verify_feature.Verify that order should be in status    order_id=${order_id}    status=${myorder_translation.order_status.pending_payment}
    home_page.Logout