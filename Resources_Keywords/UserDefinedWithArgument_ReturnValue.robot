*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Start Browser and Maximize
    [Documentation]  This user defined keyword is to open the browser and then maximize it with return of title value
    #[Timeout]  7s
    [Arguments]  ${UserURL}  ${InputBrowser}
    Open Browser  ${UserURL}  ${InputBrowser}
    Maximize Browser Window
    ${Title}=  Get Title
    [Return]  ${Title}

    #log  ${Title}