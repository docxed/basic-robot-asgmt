*** Settings ***
Resource    ../../keywords/import.robot

*** Variables ***
${home_locator.menu_user}    //ul[@role='menu']//span[@aria-label='user']
${home_locator.menu_cart}    //ul[@role='menu']//span[@aria-label='shopping-cart']
${home_locator.button_ok}    //button[span[text()='${home_translation.ok}']]
${home_locator.button_logout}    //button[span[text()='${home_translation.logout}']]