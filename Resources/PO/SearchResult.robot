*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify search is completed
    wait until page contains     results for "Ferrari 458"


Click product link
     click element    xpath=//img[@alt='RASTAR Ferrari Remote Control Car, 1/24 Scale Ferrari 458 Italia Model Car, Red Ferrari Toy Car']


