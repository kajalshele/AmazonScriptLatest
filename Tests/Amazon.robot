*** Settings ***
Documentation    This is some basic info about the whole suite

Resource    ../Resources/AmazonApp.robot
Resource    ../Resources/Common.robot
Test Setup    Begin Web Tests
Test Teardown    End Web Tests

*** Variables ***

*** Test Cases ***
Logged out user can search for product
    [Tags]    smoke
    AmazonApp.Search for product


Logged out user can view product
    [Tags]    smoke
    AmazonApp.Search for product
    AmazonApp.Select product from search result


Logged out user can add product to cart
    [Tags]    smoke
    AmazonApp.Search for product
    AmazonApp.Select product from search result
    AmazonApp.Choose Location
    AmazonApp.Add product to cart

Logged out user must sign in to check out
    [Tags]    smoke
    AmazonApp.Search for product
    AmazonApp.Select product from search result
    AmazonApp.Choose Location
    AmazonApp.Add product to cart
    AmazonApp.Begin checkout



