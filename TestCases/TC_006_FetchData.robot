*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources_Keywords/UserDefinedKeywordsWithoutArgument.robot

*** Variables ***
${URL}  https://www.thetestingworld.com/testings
${Browser}  Chrome

*** Test Cases ***
Robot Fetch Data
    Create Folder at Runtime
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    ${PageTitle}=  Get Title
    Log  ${PageTitle}
    ${Speed}=  Get Selenium Speed
    Log  ${Speed}
    ${Value}=  Get Value  xpath://input[@type='submit']
    Log  ${Value}
    ${Text}=  Get Text  xpath://a[@class='displayPopup']
    Log  ${Text}
    Select From List By Index  name:sex  1
    ${Val}=  Get Selected List Value  name:sex
    Log  ${Val}
    ${Text1}=  Get Selected List Label  name:sex
    Log  ${Text1}
    ${AllLabels}=  Get List Items  name:sex
    Log  ${AllLabels}
    ${ActualURL}=  Get Location
    Log  ${ActualURL}
    ${PageHTML}=  Get Source
    Log  ${PageHTML}
    ${Attr}=  Get Element Attribute  name:fld_username  class
    Log  ${Attr}
    ${cnt}=  Get Element Count  class:field
    Log  ${cnt}