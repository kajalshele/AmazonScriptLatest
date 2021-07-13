*** Settings ***
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/SearchResult.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/TopNav.robot


*** Keywords ***
Search for product
    LandingPage.Load
    TopNav.Search for product
    SearchResult.Verify search is completed

Select product from search result
    SearchResult.Click product link
    Product.Verify product is loaded

Choose location
    Product.Select appropriate location

Add product to cart
    Product.Verify add to cart button is enable
    Product.Add product to cart
    Cart.Verify product is added

Begin checkout
    Cart.Proceed to checkout
    SignIn.Verify sign in page is loaded

