*** Settings ***
Documentation       Suite description

*** Variables ***
${SEARCH_BUTTON}    //div[@class='MuiInputBase-root MuiOutlinedInput-root MuiInputBase-colorPrimary MuiInputBase-fullWidth MuiInputBase-adornedStart Searchbar_outlinedInput__VsG-E css-8j6b76-MuiInputBase-root-MuiOutlinedInput-root']
${SEARCH_INPUT}     //input[@id='input-with-button']
${WEATHER_INFO}     //div[@class='WeatherCard_paramsContainer__DJzz4']
${NO_RESULTS_MESSAGE}  //p[@class='Main_noResult__A0R2A']
${TEMPERATURE}      //div[@class='WeatherCard_temperatureUnits__WKQBw']
${WEATHER_IMAGE}    //img[@alt='weatherIcon']
${CITY_NAME}        //div[@class='WeatherCard_name__GiqpO']
${DATE_TIME}        //div[@class='WeatherCard_date__NNirz']
${FEELS_LIKE}       //b[normalize-space()='Feels like']
${HUMIDITY}         //b[normalize-space()='Humidity']
${PRESSURE}         //b[normalize-space()='Pressure']
${WIND_SPEED}       //b[normalize-space()='Wind Speed']
${LATEST_LOCATIONS_TEXT}  //p[normalize-space()='Latest locations']
${LATEST_LOCATIONS_LIST}  //div[@class='MuiGrid-root MuiGrid-item css-1t4l2l1-MuiGrid-root']
${CITY_IN_LIST}     //div[@class='MuiGrid-root MuiGrid-item MuiGrid-grid-xs-7 css-uqwprf-MuiGrid-root']
