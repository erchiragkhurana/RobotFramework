*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://www.thetestingworld.com/testings
${Browser}  Chrome

*** Test Cases ***
TC_001 Robot First Test Case
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    #Set Selenium Speed  2seconds
    Enter Username Email Passowrd  khurana  abc@gmail.com  test1234
    #Clear Element Text  xpath://input[@name='fld_password']
    Select Radio Button  add_type  office
    #Select From List By Index  name:sex  2
    #Select From List By Value  name:sex  1
    Select From List By Label  name:sex  Female
    Select Checkbox  name:terms
    #Click Link  xpath://a[text()='Read Detail']
    Click Button  xpath://input[@type='Sign up']
    #Close Browser

*** Keywords ***
Enter Username Email Passowrd
    [Arguments]  ${username}  ${email}  ${password}
    Input Text  name:fld_username  ${username}
    Input Text  name:fld_email  ${email}
    Input Text  xpath://input[@name='fld_password']  ${password}
