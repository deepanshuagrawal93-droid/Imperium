*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.automationtesting.in/Windows.html

*** Test Cases ***
LoginTest
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    0.15seconds
    HandleTab

*** Keywords ***
HandleTab
    Click Element    xpath://a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']
    Switch Window   title=Selenium
    Click Element    xpath://span[normalize-space()='Downloads']