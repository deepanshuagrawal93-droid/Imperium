*** Settings ***
Documentation    To Validate the API
Library    RequestsLibrary
Library    Collections

*** Variables ***
${baseURL}=    http://216.10.245.166
${book_id}

*** Test Cases ***
API Automation
    To add the book in the library
    #To get the added book from the Library

*** Keywords ***
To add the book in the library
    ${req_body}=    Create Dictionary    name=Learn Appium Automation Testing1    isbn=abc1241    aisle=019431    author=VedAA
    ${response}=    POST    url=${baseURL}/Library/Addbook.php    json=${req_body}    expected_status=200
    log    ${response.json()}
    Dictionary Should Contain Key    ${response.json()}    ID
    ${book_id}=    Get From Dictionary         ${response.json()}    ID
    Set Global Variable    ${book_id}
    log    ${book_id}
    Should Be Equal As Strings    successfully added    ${response.json()}[Msg]
    Log To Console    Successfully Added
    
#To get the added book from the Library
#    ${get_response}=    GET    url=${baseURL}/Library/GetBook.php    params=id=abc127600193    expected_status=200
#    #log    ${get_response.json()}
#    log    ${get_response.content}
#    log    ${get_response.status_code}
#    log    ${book_id}
#    log    ${get_response.text}