*** Settings ***

Variables    ../resources/setting/${ENV}/setting.yaml
Variables    ../resources/translation/th.yaml

Library    SeleniumLibrary

Resource    ./common.robot

Resource    ../resources/locators/home_locator.robot
Resource    ../resources/locators/login_locator.robot

Resource    ./pages/home_page.robot
Resource    ./pages/login_page.robot

Resource    ./features/login_feature.robot