*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/


*** Test Cases ***
TestE2E
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    0.15seconds
    HandlingAlerts

*** Keywords ***
HandlingAlerts
    Click Element    xpath://button[@id='alertBtn']
    Handle Alert    accept
    Click Element    xpath://button[@id='confirmBtn']
    #Handle Alert    dismiss
    Alert Should Be Present     Press a button!
    Sleep    5

