*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/UKWithoutArgu.py

*** Variables ***
${URL}  http://www.thetestingworld.com/testings
${Browser}  Chrome

*** Keywords ***
Start Browser and Maximize
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

Create Folder at Runtime
    create_folder
    create_subfolder
    Log  "Task Done Successfully"