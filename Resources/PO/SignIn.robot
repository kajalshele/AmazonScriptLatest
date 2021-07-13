*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify sign in page is loaded
     wait until page contains    Sign-In
