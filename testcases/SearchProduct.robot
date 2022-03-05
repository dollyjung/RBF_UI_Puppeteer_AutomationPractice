*** Settings ***
Resource    ../common/keywords.robot

*** Test Cases ***
Search First product on Women T-Shirt
    Go to E-Commernce Website
    Go to menu Women
    Select sub-menu T-shirts under Women
    Get Product Name of First Product
    Search with Product Name
    Search result is correct with matching Product's details