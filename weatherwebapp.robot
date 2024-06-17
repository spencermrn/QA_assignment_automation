*** Settings ***
Documentation       Suite description

Library     SeleniumLibrary


Resource    ../../Resources/testdata/config.robot
Resource    ../../Resources/testdata/locator.robot
Resource    ../../Resources/keyword/weatherwebapp.robot

*** Keywords ***
Open Localhost Web App
    [Setup]    Start Web App
    Open Browser    ${url2}    chrome
    Title Should Be    Expected Tit

verift that user can open Browser To Weather Web Application
    Wait Until Element Is Visible    ${SEARCH_BUTTON}   60
    Maximize Browser Window

Verify Search Button
    Input Text    ${SEARCH_INPUT}    ${city_name}
    Wait Until Element Is Enabled    ${SEARCH_BUTTON}

Verify Search Input Field
    Wait Until Element Is Visible    ${SEARCH_INPUT}
    Input Text    ${SEARCH_INPUT}    ${city_name}
    Element Text Should Be    ${SEARCH_INPUT}    ${city_name}

Verify City Search Functionality
    Input Text    ${SEARCH_INPUT}    ${city_name}
    Click Button    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${WEATHER_INFO}
    Element Should Be Visible    ${WEATHER_INFO}

Verify No Search Result
    Input Text    ${SEARCH_INPUT}    ${city_name}
    Click Button    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${NO_RESULTS_MESSAGE}
    Element Should Be Visible    ${NO_RESULTS_MESSAGE}

Verify Temperature Display
    Input Text    ${SEARCH_INPUT}    ${city_name}
    Click Button    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${TEMPERATURE}
    Element Should Be Visible    ${TEMPERATURE}

Verify Weather Image
    Input Text    ${SEARCH_INPUT}    ${city_name}
    Click Button    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${WEATHER_IMAGE}
    Element Should Be Visible    ${WEATHER_IMAGE}

Verify City Name
    Input Text    ${SEARCH_INPUT}    ${city_name}
    Click Button    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${CITY_NAME}
    Element Text Should Be    ${CITY_NAME}    ${city_name}

Verify Date Time
    Input Text    ${SEARCH_INPUT}    ${city_name}
    Click Button    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${DATE_TIME}
    Element Should Be Visible    ${DATE_TIME}

Verify Weather Metrics
    Input Text    ${SEARCH_INPUT}    ${city_name}
    Click Button    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${FEELS_LIKE}
    Element Should Be Visible    ${FEELS_LIKE}
    Element Should Be Visible    ${HUMIDITY}
    Element Should Be Visible    ${PRESSURE}
    Element Should Be Visible    ${WIND_SPEED}

Verify Latest Locations Text
    Wait Until Element Is Visible    ${LATEST_LOCATIONS_TEXT}
    Element Should Be Visible    ${LATEST_LOCATIONS_TEXT}

Verify List Of Cities
    Wait Until Element Is Visible    ${LATEST_LOCATIONS_LIST}
    ${cities}=    Get Webelements    ${LATEST_LOCATIONS_LIST}
    sleep   10s

