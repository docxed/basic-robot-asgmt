*** Settings ***
Resource    ../keywords/import.robot

Suite Setup    common.Open application    application_info=${application_info}
Suite Teardown    common.Close application

*** Test Cases ***
TC001 Add product to cart and verify that quantity should be expected
    product_detail_feature.Select product and add to cart    product_name=${tc001.product_name}
    home_page.Open cart page
    cart_feature.Verify items in cart quantity should be expected    product_name=${tc001.product_name}    expected_quantity=${tc001.expected_quantity}