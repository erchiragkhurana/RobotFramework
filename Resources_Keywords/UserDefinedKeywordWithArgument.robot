*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/UKWithArg.py

*** Variables ***


*** Keywords ***
Start Browser and Maximize
    [Arguments]  ${UserURL}  ${InputBrowser}
    Open Browser  ${UserURL}  ${InputBrowser}
    Maximize Browser Window

Create Folder at Runtime
    [Arguments]  ${foldername}  ${subfoldername}
    create_folder  ${foldername}
    create_subfolder  ${subfoldername}

Concatenate Username and Password
    [Arguments]  ${username}  ${password}
    ${resultval}=  concatenate_two_values  ${username}  ${password}
    Log  ${resultval}