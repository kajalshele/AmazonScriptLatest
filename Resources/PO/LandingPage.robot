*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Load
    Maximize window
    Open amazon website
    Verify site is loaded

Maximize window
    maximize browser window

Open amazon website
    go to    https://www.amazon.com

Verify site is loaded
    wait until page contains element    nav-logo-sprites
