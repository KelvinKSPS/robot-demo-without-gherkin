*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem


*** Keywords ***
Start Browser and Maximize
    [Documentation]     This keyword receives a url, a browser and return the title
    [Arguments]  ${UserURL}  ${InputBrowser}
    Append To Environment Variable  PATH  Resources/
    Open Browser  ${UserURL}  ${InputBrowser}
    Maximize Browser Window

Wait and Click
    [Documentation]     Wait for element on click on it
    [Arguments]         ${Element}
    Wait Until Element is Visible   ${Element}
    Click Element   ${Element} 

