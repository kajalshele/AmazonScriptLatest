*** Settings ***
Library    SeleniumLibrary

Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/SearchResult.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/TopNav.robot

*** Variables ***
${BROWSER}    chrome

*** Keywords ***
Begin Web Tests
    open browser  about:blank    ${BROWSER}

End Web Tests
    close browser