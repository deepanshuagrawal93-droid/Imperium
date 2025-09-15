*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register


*** Test Cases ***
E2E
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    0.15seconds
    Get Selenium Implicit Wait
    #Register
    Login
    Close Browser

*** Keywords ***
Register
    Select Radio Button    Gender    M
    Input Text    name:FirstName    Baby
    Input Text    name:LastName    John
    Input Text    name:Email    babyjohn@gmail.com
    Input Password    name:Password    @Test123
    Input Password    name:ConfirmPassword    @Test123
    Click Button    name:register-button

Login
    Click Link    Log in
    Capture Page Screenshot
    Input Text    name:Email    babyjohn@gmail.com
    Input Password    name:Password    @Test123
    Click Button    Log in