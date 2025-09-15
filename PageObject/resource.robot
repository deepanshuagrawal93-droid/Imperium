*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections

*** Variables ***
${URL}    https://rahulshettyacademy.com/loginpagePractise/
${ErrorMessageLogin}    css:.alert-danger
${username}    rahulshettyacademy 
${wrongpassword}    deepanshu
${password}        learning

*** Keywords ***
open browser with url
    Open Browser    ${URL}    Chrome
    Maximize Browser Window