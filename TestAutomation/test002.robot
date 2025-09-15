*** Settings ***
Documentation    To Validate the login page
Library    SeleniumLibrary
Library    Collections
Library    String
Resource    ../PageObject/resource.robot
Test Setup    open browser with url
#Test Teardown    close browser session

*** Test Cases ***
Validate Child Window Functionality
    Select the link of child window
    navigate to the child window
    Grab the Email id in the child window
    switch to parent and enter the email

*** Keywords ***

Select the link of child window
    Click Link    css:.blinkingText
    Sleep    5

navigate to the child window
    Switch Window    NEW
    Element Text Should Be    css:h1    DOCUMENTS REQUEST

Grab the Email id in the child window
    ${text}=    Get Text    css:.red
    @{words}=    Split String    ${text}    at
    ${rightWord}=    Get From List    ${words}    1
    log    ${rightWord}
    @{email}=    Split String    ${rightWord}
    Log    ${email}
    ${emailAddress}=    Get From List    ${email}    0
    Log    ${emailAddress}
    Set Global Variable    ${emailAddress}

switch to parent and enter the email
    Switch Window    MAIN
    Title Should Be    LoginPage Practise | Rahul Shetty Academy
    Input Text    id:username    ${emailAddress}
    Input Password    id:password    ${password}
    Click Button    id:signInBtn