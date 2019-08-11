*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources_Keywords/UserDefinedKeywordWithArgument.robot
default tags  DFLT
force tags  All_TC

*** Variables ***
${URL}  https://www.thetestingworld.com/testings
${Browser}  Chrome

*** Test Cases ***
TC_003 Robot Third Test Case
    [Tags]  Smoke  Regression
    Start Browser and Maximize  https://www.facebook.com  Chrome


Robot next test Case
    [Tags]  Smoke  Sanity
    Input Text  name:fld_username  ${username}
    Input Text  name:fld_email  ${email}
    Input Text  xpath://input[@name='fld_password']  ${password}

Robot third test case
    Input Text  name:fld_username  ${username}
    Input Text  name:fld_email  ${email}

#to execute this = robot -i Smoke  TC_003_UDKWithArgument.robot = i means include
#to execute at Test Suite level = robot -i Regression TestCases
#to execute test cases which has no tags and want t run with settings default DFLT tag then = robot -i DFLT TestCases
#forced tag is when if you have applied any tags or not to any test case then forced tag is applied to all the tesst cases
#in particur file then = robot -i ALL_TC TestCases

# 1. include = robot -i SmokeANDSanity TestCases
# 2. robot -i SmokeNOTSanity TestCses
# 3. robot -i SmokeORRegression TestCases
# 4. exclude = -e Regression TestCases
# 5. particular test case = robot -t "Robot third test case" TestCases
# 6. particular test suite = robot -s "TC_003_UDKWithArgument" TestCases (need not to give the extension)
# 7. report,output,log = robot -r ./Reports/Report.html -o ./Reports/Output.xml -l ./Reports/logs.html - TestCases
# to generate report in particular folder