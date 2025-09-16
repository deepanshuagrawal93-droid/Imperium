*** Settings ***
Documentation    To Validate the Swagger API
Library    RequestsLibrary
Library    Collections

*** Variables ***
${baseURL}=    http://127.0.0.1:8000
${book_id}

*** Test Cases ***
API Automation
    Add the Book
    Get the Book
    Get Book by ID
    Update the Book
    Delete the Book

    
*** Keywords ***
Add the Book
    ${req_body}=    Create Dictionary    name=Laptop    description=ThinkPad
    ${response}=    POST    url=${baseURL}/items    json=${req_body}    expected_status=200
    Log    ${response.json()}
    Dictionary Should Contain Key    ${response.json()["item"]}    id
    ${book_id}=    Get From Dictionary    ${response.json()["item"]}    id
    Set Global Variable    ${book_id}
    Log To Console    Book Added Successfully with id ${book_id}
    Should Be Equal As Strings    Item added successfully    ${response.json()["message"]}

Get the Book
    ${get_response}=    GET    url=${baseURL}/items    expected_status=200
    Log    ${get_response.json()}
    FOR    ${item}    IN    @{get_response.json()}
        Log To Console    Item Id: ${item["id"]}, Name: ${item["name"]}, Description: ${item["description"]}
    END
    
Get Book by ID
    ${getByID_response}=    GET    url=${baseURL}/items/${book_id}    expected_status=200
    Log    ${getByID_response.json()}

Update the Book
    ${req_body}=    Create Dictionary    name=Mobile    description=Samsung
    ${updateByID_response}=    PUT    url=${baseURL}/items/${book_id}    json=${req_body}    expected_status=200
    Log    ${updateByID_response.json()}
    
Delete the Book
    ${delete_response}=    DELETE    url=${baseURL}/items/${book_id}    expected_status=200
    Log    ${delete_response.json()}