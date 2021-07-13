*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Verify product is added
     wait until page contains    Added to Cart


Proceed to checkout
    click link    id=hlb-ptc-btn-native

