*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources_Keywords/UserDefinedWithArgument_ReturnValue.robot
Documentation  This file having some test cases of ABC functionality
#test timeout  20s

*** Variables ***
${URL}  https://www.thetestingworld.com/testings
${Browser}  Chrome

*** Test Cases ***
TC_004 Robot Fourth Test Case
    [Documentation]  This test case is to check registration functionality of application
    [Timeout]  2mins 8s  Failed to Execute Fourth Test Case
    ${Res}=  Start Browser and Maximize  ${URL}  ${Browser}
    log  ${Res}
    Input Text  name:fld_username  ${Res}