*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
LoginTest
    Open Browser    https://www.google.com/     chrome
    Maximize Browser Window
    Set Selenium Speed    0.15seconds

    Sleep    3

    Open Browser    https://www.bing.com/   chrome
    Maximize Browser Window
    Set Selenium Speed    0.15seconds

    Switch Browser    1
    ${title1}   Get Title
    Log To Console    ${title1}

    Switch Browser    2
    ${title2}   Get Title
    Log To Console    ${title2}
