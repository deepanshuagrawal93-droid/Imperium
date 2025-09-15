*** Settings ***
Documentation    All the keywords and page objects of the landing page
Library    SeleniumLibrary
Library    String
Library    Collections

*** Keywords ***
wait on the landing page
    Wait Until Element Is Visible    css:.navbar-brand

verify card titles in the shop page
    @{ExpectedList}=    Create List    iphone X    Samsung Note 8    Nokia Edge    Blackberry
    ${elements}=    Get Webelements    css:.card-title
    @{ActualList}=    Create List
    FOR    ${element}    IN    @{elements}
       log    ${element.text}
       Append To List    ${ActualList}    ${element.text}
    END
    Lists Should Be Equal    ${ExpectedList}    ${ActualList}

select the card
    [Arguments]    ${cardName}
    ${elements}=    Get Webelements    css:.card-title
    ${index}=    Set Variable    1
        FOR    ${element}    IN    @{elements}
            Exit For Loop If    '${cardName}' == '${element.text}'
            ${index}=    Evaluate    ${index}+1
        END

    Click Button    xpath:(//*[@class='card-footer'])[${index}]/button
    Sleep    15s
    Capture Page Screenshot    Blackberry.png

wait for sometime
    sleep    2