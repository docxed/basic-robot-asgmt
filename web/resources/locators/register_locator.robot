*** Settings ***
Resource    ../../keywords/import.robot

*** Variables ***
${register_locator.button_signup}    xpath=//button[span[text()='${register_translation.sign_up}']]
${register_locator.input_username}    id=basic_username
${register_locator.input_password}    id=basic_password
${register_locator.input_confirm_password}    id=basic_confirmPassword
${register_locator.button_action_signup}    xpath=//button[span[text()='${register_translation.action_sign_up}']]