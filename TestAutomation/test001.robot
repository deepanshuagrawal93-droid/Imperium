*** Settings ***
Documentation    To Validate the login page
Library    SeleniumLibrary
Library    Collections
Resource    ../PageObject/resource.robot
Test Setup    open browser with url
#Test Teardown    close browser session

*** Test Cases ***
#Validate UnSuccessful Login
#    fill the login form invalid data
#    wait until it shows the error message
#    verify the error message is correct

Validate Successful Login and validate cards
    fill the login form
    wait on the landing page
    verify card titles in the shop page
    select the card    Blackberry

#Select the form and navigate to the child window
#    Fill the login details and select the user option


*** Keywords ***
#fill the login form invalid data
#    Input Text    id:username    ${username}
#    Input Password    id:password    ${wrongpassword}
#    Click Button    id:signInBtn
#
#wait until it shows the error message
#    Wait Until Element Is Visible    ${ErrorMessageLogin}
#
#verify the error message is correct
#    Element Text Should Be    ${ErrorMessageLogin}    Incorrect username/password.

fill the login form
    Input Text    id:username    ${username}
    Input Password    id:password    ${password}
    Click Button    id:signInBtn

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

#Fill the login details and select the user option
#    Input Text    id:username    ${username}
#    Input Password    id:password    ${password}
#    Click Element    css:input[value='user']
#    Wait Until Element Is Visible    id:okayBtn
#    Click Element    id:okayBtn
#    Select From List By Value    css:select.form-control    teach
#    Click Element    css:input[name='terms']
#    Capture Page Screenshot    details.png
#