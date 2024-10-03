*** Settings ***
Resource    ../../keywords/import.robot

*** Variables ***
${home_locator.menu_user}    xpath=//ul[@role='menu']//span[@aria-label='user']
${home_locator.menu_cart}    xpath=//ul[@role='menu']//span[@aria-label='shopping-cart']
${home_locator.button_ok}    xpath=//button[span[text()='${home_translation.ok}']]
${home_locator.button_logout}    xpath=//button[span[text()='${home_translation.logout}']]