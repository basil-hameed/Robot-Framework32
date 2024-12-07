*** Settings ***

Documentation    Testing the chrome browser launch 

Library    SeleniumLibrary

# Run the below command for execution
# robot -d Reports TestCases/TestChrome.rbot

*** Variables ***

${BASE_URL}    https://www.guvi.in


*** Test Cases ***

TestCase-1
    [Documentation]    Start automation
    [Tags]    homepage, start
    Open Browser    ${BASE_URL}    chrome

TestCase-2
    [Documentation]    Stop automation
    [Tags]    homepage, Stop
    Close All Browsers

