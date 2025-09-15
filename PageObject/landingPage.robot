*** Settings ***
Documentation    All the keywords and page objects of the landing page
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

fill the login form
    Input Text    id:username    ${username}
    Input Password    id:password    ${password}
    Click Button    id:signInBtn