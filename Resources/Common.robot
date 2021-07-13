*** Settings ***
Library    SeleniumLibrary

Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/SearchResult.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/TopNav.robot

*** Variables ***
${WEBSITE}    https://www.amazon.com
${BROWSER}    chrome

*** Keywords ***
Begin Web Tests
    open browser  ${WEBSITE}    ${BROWSER}

End Web Tests
    close browser