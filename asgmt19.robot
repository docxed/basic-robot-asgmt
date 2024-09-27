*** Settings ***
Library    SeleniumLibrary

Suite Teardown   Log    Suite Teardown is running

*** Variables ***

*** Test Cases ***
Test Case With Teardown
    [Teardown]    Log    Case Teardown is running
    Log    Running the test
    Keyword With Teardown

*** Keywords ***
Keyword With Teardown
    [Teardown]    Log    Keyword Teardown is running
    Log   Running the keyword