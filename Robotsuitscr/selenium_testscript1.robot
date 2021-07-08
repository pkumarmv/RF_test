*** Settings ***
Library     datetime
Library    SeleniumLibrary
Library    OperatingSystem





*** Test Cases ***



TC2 Print Name
     ${Name}    Set Variable    Testvariable
     Log To Console    ${Name}


Tc3 open browser

     Append To Environment Variable    Path     C:\\Browserdrivers\\chromedriver_win32
     Maximize Browser Window
     Open Browser   url=http://demo.openemr.io/b/openemr/interface/login/login.php?site=default  browser=gc



