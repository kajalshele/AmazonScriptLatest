*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify product is loaded
     wait until page contains    RASTAR Ferrari Remote Control Car, 1/24 Scale Ferrari 458 Italia Model Car, Red Ferrari Toy Car

Select appropriate location
    Click Delivery link
    Verify "Choose your location" page is loaded
    Click country dropdown arrow
    Select country from list
    Press Done

Verify add to cart button is enable
     wait until element is enabled    add-to-cart-button

Add product to cart
     click element    id=add-to-cart-button




Click Delivery link
     click element    xpath=//div[@id='contextualIngressPtLabel_deliveryShortLine']/span[last()]


Verify "Choose your location" page is loaded
     wait until page contains    Choose your location

Click country dropdown arrow
    click element   id=GLUXCountryValue


Select country from list
    click element    xpath=//li[@aria-labelledby='GLUXCountryList_1']/a[text()='Canada']

Press Done
    click button    xpath=//button[text()='Done']

