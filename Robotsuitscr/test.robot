*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem


*** Test Cases ***
TCEMR
     Append To Environment Variable    Path     C:\\Browserdrivers\\chromedriver_win32

     Open Browser   url=http://demo.openemr.io/b/openemr/interface/login/login.php?site=default  browser=gc
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Input Text    id=authUser    admin
     Input Password    id=clearPass    pass
     Select From List By Label    xpath=//select[@name='languageChoice']     English (Indian)
     Click Element   xpath= //button[@type='submit']
     Wait Until Page Contains    Flow Board 50s
     ${title}    Get Title
     Log    ${title}
     Log To Console    ${title}
     
     Mouse Over    locator