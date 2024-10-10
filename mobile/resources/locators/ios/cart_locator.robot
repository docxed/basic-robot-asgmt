*** Variables ***
${cart_locator.quantity_per_product}    xpath=//XCUIElementTypeStaticText[@value="%product_name%"]/following-sibling::XCUIElementTypeStaticText[@value="%expected_quantity%"]