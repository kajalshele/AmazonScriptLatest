*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Search for product
    Enter search term
    Submit search

Enter search term
    input text    xpath=//input[@id='twotabsearchtextbox']    Ferrari 458

Submit search
     click button    id=nav-search-submit-button


