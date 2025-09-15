*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
MouseOperartions
    #right click action
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    Maximize Browser Window
    Set Selenium Speed    0.20
    Open Context Menu    xpath:/html/body/div/section/div/div/div/p/span
    Sleep    2

    #DoubleClickAction
    Go To    https://testautomationpractice.blogspot.com/
    Double Click Element    xpath://button[normalize-space()='Copy Text']
    Sleep    2

    #DragandDrop
    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Drag And Drop    id:box1    id:box101
    Drag And Drop    id:box2    id:box102
    Drag And Drop    id:box3    id:box103
    Drag And Drop    id:box4    id:box104
    Drag And Drop    id:box5    id:box105
    Drag And Drop    id:box6    id:box106
    Drag And Drop    id:box7    id:box107
    Sleep    2
    #Taking Screenshot
    Capture Page Screenshot