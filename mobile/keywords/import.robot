*** Settings ***
Variables    ../resources/settings/${ENV}/${platform}.yaml
Variables    ../resources/testdata/testdata.yaml

Library    AppiumLibrary
Library    String

Resource    ./common/common.robot
Resource    ./common/${platform}/common.robot

Resource    ../resources/locators/${platform}/home_locator.robot
Resource    ../resources/locators/${platform}/product_detail_locator.robot
Resource    ../resources/locators/${platform}/cart_locator.robot

Resource    ./pages/home_page.robot
Resource    ./pages/product_detail_page.robot
Resource    ./pages/cart_page.robot

Resource    ./features/product_detail_feature.robot
Resource    ./features/cart_feature.robot
