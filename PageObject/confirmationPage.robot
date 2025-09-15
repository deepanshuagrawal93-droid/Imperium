*** Settings ***
Documentation    All the keywords and page objects of the landing page
Library    SeleniumLibrary
Library    String
Library    Collections

*** Keywords ***
confirmation
    sleep    2
    Input Text    country    Ind
    Sleep    2
    Wait Until Element Is Visible    xpath=//a[text()='India']
    Sleep    2
    Click Element    xpath=//a[text()='India']
    Sleep    2
    Click Element    css:.checkbox label
    Sleep    2
    Click Button    css:.btn.btn-success.btn-lg
    Sleep    2
    Capture Page Screenshot    checkout.png
    Page Should Contain    Success!
    log