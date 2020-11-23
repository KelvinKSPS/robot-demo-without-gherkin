*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  Collections
Resource  ../Resources/common.robot
Resource  ../PageObjects/sidi.robot
Test Teardown  Run Keyword If Test Failed    Capture Page Screenshot
Suite Teardown  Close All Browsers

*** Variables ***
${Browser}  Chrome
${URL}  http://www.sidi.org.br
    

*** Test Cases ***
Translator Button should exist
  Start Browser and Maximize    ${URL}  ${Browser}
  Page Should Contain Element   ${Translator Button}
  Close Browser

English page should be displayed If Translator Button is clicked
  Start Browser and Maximize  ${URL}  ${Browser}
  Click Element   ${Translator Button}
  Click Element   ${English Option} 
  ${Current Url}=     Get Location
  Should Be Equal As Strings    ${Current Url}  ${English Url}
  Close Browser

Careers page should be displayed If Careers Option is clicked
  Start Browser and Maximize  ${URL}  ${Browser}
  Click Element   ${Menu Button}
  Wait and Click  ${Careers Option}
  ${Current Url}=     Get Location
  Should Be Equal As Strings    ${Current Url}  ${Careers Url}
  Close Browser

*** Keywords ***

