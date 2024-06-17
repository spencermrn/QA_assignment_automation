*** Settings ***
Documentation       Suite description

Library     SeleniumLibrary
Library     OperatingSystem
Library     ProcessLibrary

Resource    ../../Resources/testdata/config.robot
Resource    ../../Resources/testdata/locator.robot
Resource    ../../Resources/keyword/weatherwebapp.robot

*** Variables ***
${url2}    http://localhost:3000/
${browser}    chrome
${WEB_APP_CMD}    npm start
${WEB_APP_DIR}    C:\Users\User\Downloads\qa-assignment\application
${driver_path}  C:\Users\User\Downloads\chromedriver.exe

*** Keywords ***
Start Web App
    Run Process    ${WEB_APP_CMD}    shell=True    cwd=${WEB_APP_DIR}
    Sleep    5s