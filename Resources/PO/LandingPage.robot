*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Load
    wait until page contains element    nav-logo-sprites
