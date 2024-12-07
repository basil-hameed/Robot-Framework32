*** Settings ***

# Home Page.robot

Documentation    Page Object Model

Library    SeleniumLibrary

*** Variables ***

${BASE_URL}    https://automationplayground.com/crm/index.html
${USERNAME}    basil@gmail.com
${PASSWORD}    Secret@123
${EMAIL}    test@example.com
${FIRST_NAME}    Automation
${LAST_NAME}    Tester
${CITY}    Chennai


*** Keywords ***

Start automation
    [Documentation]    Start automation
    [Tags]    Start
    Open Browser    ${BASE_URL}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10s
    Capture Page Screenshot    ../Screenshots/image_1.png


Sign-in into the application
    [Documentation]    sign-in into the application
    [Tags]    Click Sign-In Button
    Click Link    id=SignIn
    Capture Page Screenshot    ../Screenshots/image_2.png


Add Sign-up Credentials
    [Documentation]    Add Sign-up Credentials
    [Tags]    Enter username password
    Input Text    id=email-id    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    id=submit-id
    Capture Page Screenshot    ../Screenshots/image_3.png


Add a new customer
    [Documentation]    Add a new customer
    [Tags]    Add new customer
    Click Link    id=new-customer
    Input Text    id=EmailAddress    ${EMAIL}
    Input Text    id=FirstName    ${FIRST_NAME}
    Input Text    id=LastName    ${LAST_NAME}
    Input Text    id=City    ${CITY}
    Select From List By Value    id=StateOrRegion    AK
    Select Radio Button    gender    male
    Click Button    xpath=//button[@type="submit"]
    Capture Page Screenshot    ../Screenshots/image_4.png    


Confirm the new user
    [Documentation]    Confirm the new user
    [Tags]    Confirm user addition
    Wait Until Page Contains    Success! New customer added.
    Capture Page Screenshot    ../Screenshots/image_5.png


Shutdown automation
    [Documentation]    Shutdown the application    
    [Tags]    Shutdown
    Close All Browsers