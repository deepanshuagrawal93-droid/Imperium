*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.saucedemo.com/


*** Test Cases ***
SauceTestE2E
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    0.05seconds
    loginToApplication
    SortingProducts
    AddingItemsToCart
    GoToCart&Checkout
    CheckoutInfo&Continue
    Close Window

*** Keywords ***
loginToApplication
    Input Text    id:user-name      standard_user
    Input Text    id:password       secret_sauce
    Get Selenium Implicit Wait
    Click Button    login-button

SortingProducts
    Select From List By Label    xpath://select[@class='product_sort_container']    Price (low to high)

AddingItemsToCart
    Click Button    name:add-to-cart-sauce-labs-onesie
    Click Button    name:add-to-cart-sauce-labs-fleece-jacket

GoToCart&Checkout
    Click Link      xpath://a[@class='shopping_cart_link']
    Click Button    name:checkout

CheckoutInfo&Continue
    Input Text    id:first-name    Hello
    Input Text    id:last-name    World
    Input Text    id:postal-code    121212
    Click Button    id:continue
