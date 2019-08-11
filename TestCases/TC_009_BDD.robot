*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources_Keywords/Setup_TearDown.robot #if your test case is another one more folder then youhav to use ../../thenpath
Test Setup  Start Browser and Maximize
Test Teardown  Close Browser Window
Suite Setup  Before each Test Suite
Suite Teardown  After each Test Suite
Resource  ../Resources_Keywords/UserDefinedKeywordWithArgument.robot

*** Variables ***


*** Test Cases ***
Test Case in BDD Format
    Given Start Browser and Maximize
    When Create Folder at Runtime  ABCD  XYZ
    Then Concatenate Username and Password  Test  World

