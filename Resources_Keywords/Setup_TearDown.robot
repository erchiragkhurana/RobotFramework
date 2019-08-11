*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Start Browser and Maximize
    [Documentation]  This user defined keyword is to open the browser and then maximize it with return of title value
    Open Browser  https://www.thetestingworld.com/testings  Chrome
    Maximize Browser Window

Close Browser Window
    ${Title}=  Get Title
    LOG  ${Title}
    Close Browser