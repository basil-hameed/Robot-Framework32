*** Settings ***

Documentation    Validate the title and URL of GUVI Website

Library    SeleniumLibrary

# Run the command for execution 

# robot -d Reports TestCases/TestHomePage.robot


*** Variables ***

${BASE_URL}    https://www.guvi.in/
${EXPECTED_TITLE}    GUVI | Learn to code in your native language

*** Test Cases ***

TestCase-1
    [Documentation]    Start the automation 
    [Tags]    start
    Open Browser    ${BASE_URL}    chrome
    Maximize Browser Window


TestCase-2
    [Documentation]    Validate URL 
    [Tags]    homepage
    ${url} =  Get Location
    Log To Console    ${url}
    Should Be Equal    ${url}    ${BASE_URL}

TestCase-3
    [Documentation]    Validate Title
    [Tags]    homepage
    ${title} =  Get Title
    Log To Console    ${title}
    Should Be Equal    ${title}    ${EXPECTED_TITLE}

TestCase-4
    [Documentation]    shutdown
    [Tags]    shutdown
    Close All Browsers
