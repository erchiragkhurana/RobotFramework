*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources_Keywords/Setup_TearDown.robot #if your test case is another one more folder then youhav to use ../../thenpath
Test Setup  Start Browser and Maximize
Test Teardown  Close Browser Window
Suite Setup  Before each Test Suite
Suite Teardown  After each Test Suite

*** Variables ***
${URL}  https://www.thetestingworld.com/testings
${Browser}  Chrome

*** Test Cases ***
TC_005 Robot Fifth Test Case
    #[Setup]  Start Browser and Maximize
    #[Teardown]  Close Browser Window
    Input Text  name:fld_username  Testing
    Input Text  name:fld_email  abc@gmail.com
    Input Text  name:fld_password  test123

Robot Next Test Case
    #[Setup]  Start Browser and Maximize
    #[Teardown]  Close Browser Window
    Select Radio Button  add_type  office