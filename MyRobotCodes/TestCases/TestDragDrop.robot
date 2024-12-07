*** Settings ***

Documentation    Drag and Drop using robot

Library    SeleniumLibrary

*** Variables ***

${BASE_URL}    https://qavbox.github.io/demo/dragndrop/
${BROWSER}    chrome


*** Test Cases ***

TestCase-1
    [Documentation]    Start automation
    [Tags]    start
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Browser Implicit Wait    10s


TestCase-2
    [Documentation]    Drag and Drop operation
    [Tags]    dragndrop
    Drag And Drop    id=draggable    id=droppable
    Element Text Should Be    id=droppable    Dropped!

TestCase-3
    [Documentation]    shutdown
    [Tags]    Stop
    Close All Browsers
    