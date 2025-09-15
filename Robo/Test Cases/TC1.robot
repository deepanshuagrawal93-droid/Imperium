*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/


*** Test Cases ***
LoginTest
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    0.15seconds
    Get Selenium Implicit Wait
    loginToApplication
    Close Browser

*** Keywords ***
loginToApplication
    Click Link    xpath://a[@class='ico-login']
    Input Text    id:Email    deepanshuagrawal93@gmail.com
    Input Text    id:Password    @Deep123
    Get Selenium Implicit Wait
    Click Button    xpath://input[@class='button-1 login-button']