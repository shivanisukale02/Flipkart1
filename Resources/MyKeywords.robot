*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_flipkart}  Flipkart
${url}  https://www.google.com/
${search_product}  iphone13
*** Keywords ***
search data
    Input Text  name:q  ${search_flipkart}
search product
    Input Text  name:q  ${search_product}
start testcase
    Open Browser  ${url}  chrome
    Maximize Browser Window
stop testcase
    Close Browser