*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}       https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Sleep    3
    Title Should Be     nopCommerce demo store. Home page title
    Click Link    xpath://a[@class='ico-login']
    ${"emailTxt"}   Set Variable    id:Email
    Element Should Be Visible    ${"emailTxt"}
    Element Should Be Enabled    ${"emailTxt"}
    Input Text    ${"emailTxt"}    deepanshuagrawal93@gmail.com
    Sleep    5
    Clear Element Text    ${"emailTxt"}
    Sleep    3
    Close Browser

*** Keywords ***

