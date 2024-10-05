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
    ${order_id}    checkout_feature.Fill delivery info and select payment method and pay  
    ...    name=${tc001.user_delivery.name}    surname=${tc001.user_delivery.surname}    address=${tc001.user_delivery.address}    phone=${tc001.user_delivery.phone}
    ...    payment_method=${tc001.payment_method.credit_card}
    ...    credit_card_number=${tc001.credit_card.number}    credit_card_expiry=${tc001.credit_card.expiry}    credit_card_cvc=${tc001.credit_card.cvc}    credit_card_owner=${tc001.credit_card.owner}
    verify_feature.Verify that order should be pending    order_id=${order_id}
    # BuiltIn.Sleep    time_=40s
    # verify_feature.Verify that order should be prepared    order_id=${order_id}
    home_page.Logout