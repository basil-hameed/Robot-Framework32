*** Settings ***

Documentation    Validating the login of OrangeHRM Website

Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}    chrome
${USERNAME}    Admin
${PASSWORD}    admin123


*** Test Cases ***


TestCase-1
    [Documentation]    Start automation
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Browser Implicit Wait    10s

TestCase-2
    [Documentation]    Add login credentials
    [Tags]    login
    Element Should Be Visible    name=username
    Input Text     name=username   ${USERNAME}
    Element Should Be Visible    name=password
    Input Text   name=password     ${PASSWORD}
    Element Should Be Enabled    xpath=//button[@type="submit"]
    Click Element    //button[@type="submit"]
    Page Should Contain    Dashboard


TestCase-3
    [Documentation]    Shutdown automation
    [Tags]    shutdown
    Close All Browsers

    
