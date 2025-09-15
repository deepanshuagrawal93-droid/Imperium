*** Settings ***
Documentation    To Validate the login page
Library    SeleniumLibrary
Library    Collections
Library    ../Library/Shop.py
Resource    ../PageObject/resource.robot
Resource    ../PageObject/landingPage.robot
Resource    ../PageObject/shopPage.robot
Test Setup    open browser with url

*** Variables ***
@{listOfProducts}    Nokia Edge    Blackberry

*** Test Cases ***

Validate Successful Login and validate cards
    landingPage.fill the login form
    shopPage.wait on the landing page
    shopPage.verify card titles in the shop page
    Add Items To Cart And Checkout    ${listOfProducts}
    shopPage.wait for sometime