*** Settings ***
Documentation    To Validate the login page
Library    SeleniumLibrary
Library    Collections
Resource    ../PageObject/resource.robot
Resource    ../PageObject/landingPage.robot
Resource    ../PageObject/shopPage.robot
Resource    ../PageObject/checkoutPage.robot
Resource    ../PageObject/confirmationPage.robot
Test Setup    open browser with url

*** Test Cases ***

Validate Successful Login and validate cards
    landingPage.fill the login form
    shopPage.wait on the landing page
    shopPage.verify card titles in the shop page
    shopPage.select the card    iphone X
    shopPage.wait for sometime
    checkoutPage.proceed to checkout
    confirmationPage.confirmation

