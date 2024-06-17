*** Settings ***
Documentation       Suite description
Library     SeleniumLibrary
Library     Process
Library     String

Resource    ../Resources/testdata/config.robot
Resource    ../Resources/testdata/locator.robot
Resource    ../Resources/keyword/weatherwebapp.robot

*** Test Cases ***
TC-001 - valid Localhost
    [Tags]  tc001 Localhost
    Open Localhost Web App

TC-002 - valid browser
    [Tags]  tc002 Browser
    verift that user can open Browser To Weather Web Application

TC-003 - valid button
    [Tags]  tc003 Button
    Verify Search Button

TC-004 - valid input field
    [Tags]  tc004 input
    Verify Search Input Field

TC-005 - valid City
    [Tags]  tc005 City
    Verify City Search Functionality

TC-006 - No result
    [Tags]  tc006 Search Result
    Verify No Search Result

TC-007 - valid City
    [Tags]  tc007 CityFunctionality
    Verify City Search Functionality

 TC-008 - valid City
    [Tags]  tc008 No Search
    Verify No Search Result

TC-009 - valid Temperature
    [Tags]  tc009 Temperature
    Verify Temperature Display

TC-010 - valid Weather
    [Tags]  tc010 Weather
    Verify Weather Image

TC-011 - valid City Name
    [Tags]  tc011 CityName
    Verify City Name

TC-012 - valid Date Time
    [Tags]  tc012 DateTime
    Verify Date Time

TC-013 - valid Weather Metrics
    [Tags]  tc013 WeatherMetrics
    Verify Weather Metrics

TC-014 - valid Latest Locations
    [Tags]  tc014 LatestLocations
    Verify Latest Locations Text

TC-015 - valid List Of Cities
    [Tags]  tc015 ListOfCities
    Verify List Of Cities
