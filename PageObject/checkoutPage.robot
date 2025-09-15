*** Settings ***
Documentation    All the keywords and page objects of the landing page
Library    SeleniumLibrary
Library    String
Library    Collections

*** Keywords ***
proceed to checkout
    Click Element    css:.nav-link.btn.btn-primary
    Click Element    css:.btn-success
