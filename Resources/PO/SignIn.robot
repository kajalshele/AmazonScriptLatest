*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify page is loaded
     wait until page contains    Sign-In
