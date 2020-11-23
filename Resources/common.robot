*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem


*** Keywords ***
Start Browser and Maximize
    [Documentation]  This keyword receives a url, a browser and return the title
    [Arguments]  ${UserURL}  ${InputBrowser}
    Append To Environment Variable  PATH  Resources/
    Open Browser  ${UserURL}  ${InputBrowser}
    Maximize Browser Window
    [Return] 


