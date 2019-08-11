*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources_Keywords/UserDefinedKeywordWithArgument.robot

*** Variables ***
${URL}  https://www.thetestingworld.com/testings
${Browser}  Chrome

*** Test Cases ***
Robot UKWithArgPy
    #Create Folder at Runtime  Hello1234  Testing
    Concatenate Username and Password  Testing  World
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

