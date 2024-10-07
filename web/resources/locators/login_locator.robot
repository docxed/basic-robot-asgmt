*** Variables ***
${login_locator.input_username}    xpath=//span[@aria-label='user']/parent::span/following-sibling::input
${login_locator.input_password}    xpath=//span[@aria-label='lock']/parent::span/following-sibling::input
${login_locator.button_action_login}    xpath=//button[span[text()='${login_translation.action_login}']]