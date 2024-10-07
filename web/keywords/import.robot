*** Settings ***
Variables    ../resources/setting/${ENV}/setting.yaml
Variables    ../resources/testdata/testdata.yaml
Variables    ../resources/translation/th.yaml

Library    SeleniumLibrary
Library    String

Resource    ./common.robot

Resource    ../resources/locators/home_locator.robot
Resource    ../resources/locators/register_locator.robot
Resource    ../resources/locators/login_locator.robot
Resource    ../resources/locators/product_search_locator.robot
Resource    ../resources/locators/product_checkout_locator.robot
Resource    ../resources/locators/myorder_verify_locator.robot

Resource    ./pages/home_page.robot
Resource    ./pages/register_page.robot
Resource    ./pages/login_page.robot
Resource    ./pages/product_search_page.robot
Resource    ./pages/product_checkout_page.robot
Resource    ./pages/myorder_verify_page.robot

Resource    ./features/register_feature.robot
Resource    ./features/login_feature.robot
Resource    ./features/product_search_feature.robot
Resource    ./features/product_checkout_feature.robot
Resource    ./features/myorder_verify_feature.robot