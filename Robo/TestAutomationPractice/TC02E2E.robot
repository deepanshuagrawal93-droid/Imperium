*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://ui.vision/demo/webtest/frames/


*** Test Cases ***
TestE2E
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    0.15seconds
    HandlingFrames

*** Keywords ***
HandlingFrames
    Select Frame    name1
    Input Text    mytext1    HelloWorld
    Unselect Frame
    Select Frame    frame_2.html
    Input Text    mytext2    HelloWorld
    Sleep   5
