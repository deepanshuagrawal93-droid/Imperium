*** Settings ***
Documentation    To Validate the login page
Library    SeleniumLibrary
Library    Collections
#Resource    ../PageObject/resource.robot
#Test Setup    open browser with url
#Test Teardown    close browser session
Test Template    Validate UnSuccessful Login

*** Variables ***
${URL}    https://rahulshettyacademy.com/loginpagePractise/
${ErrorMessageLogin}    css:.alert-danger

*** Test Cases ***    username            password
invalid username    qwerty                learning
invalid password    rahulshettyacademy    qwerty
special char        !@.{##}               qwert!@.{#}

*** Keywords ***
Validate UnSuccessful Login
    [Arguments]    ${username}    ${password}
    open browser with url
    fill the login form invalid data    ${username}    ${password}
    wait until it shows the error message
    verify the error message is correct

open browser with url
    Open Browser    ${URL}    Chrome
    Maximize Browser Window

fill the login form invalid data
    [Arguments]    ${username}    ${password}
    Input Text    id:username    ${username}
    Input Password    id:password    ${password}
    Click Button    id:signInBtn
    
wait until it shows the error message
    Wait Until Element Is Visible    ${ErrorMessageLogin}

verify the error message is correct
    Element Text Should Be    ${ErrorMessageLogin}    Incorrect username/password.