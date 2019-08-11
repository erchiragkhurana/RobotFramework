*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources_Keywords/Setup_TearDown.robot #if your test case is another one more folder then youhav to use ../../thenpath
Test Setup  Start Browser and Maximize
Test Teardown  Close Browser Window
Suite Setup  Before each Test Suite
Suite Teardown  After each Test Suite
Library ../ExternalKeywords/Locators.py

*** Variables ***
${URL}  https://www.thetestingworld.com/testings
${Browser}  Chrome

*** Test Cases ***
TC_008 Robot Eight Test Case
    ${username}=  Read Element Locator  Registration.username_textbox_name
    Input Text  name:${username}  Testing
    ${password}=  Read Element Locator  Registration.password_textbox_name
    Input Text  name:fld_email  abc@gmail.com
    Input Text  name:${password}  test123

Robot Next Test Case
    Select Radio Button  add_type  office

*** Keywords ***
Read Element Locator
    [Arguments]  JsonPath
    ${result}=  read_locator_from_json
    [return]  ${result}
