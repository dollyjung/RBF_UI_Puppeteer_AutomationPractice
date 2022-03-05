*** Settings ***
Library     PuppeteerLibrary
Resource    ./varibales.robot

*** Keywords ***
Go to E-Commernce Website
    PuppeteerLibrary.Open Browser    ${URL}

Go to menu Women
    Mouse Over    ${MENU_WOMEN} 

Select sub-menu T-shirts under Women
    Wait Until Element Is Visible    ${SUBMENU_WM_TSHIRTS}
    Click Element    ${SUBMENU_WM_TSHIRTS} 
    Wait Until Element Is Visible    ${CAT_TSHIRT}   

Get Product Name of First Product
    Wait Until Element Is Visible    ${FIRST_PRODUCTNAME}
    ${product_name}=  Get Text    ${FIRST_PRODUCTNAME}
    ${product_desc}=  Get Text    ${FIRST_PRODUCTDESC}
    ${product_price}=  Get Text   ${FIRST_PRODUCTPRICE}
    Set Test Variable    ${search_product}  ${product_name}
    Set Test Variable    ${search_desc}     ${product_desc}
    Set Test Variable    ${search_price}    ${product_price}

Search with Product Name
    log  ${search_product}  console=yes
    Input Text    ${INPUT_SEARCH}    ${search_product}
    Click Button    ${BUTTON_SEARCH}

Search result is correct with matching Product's details
    #Current page is search
    Wait Until Element Is Visible    ${NAV_SEARCH}
    Wait Until Element Is Visible    ${FIRST_PRODUCTNAME}
    Element Text Should Be    ${FIRST_PRODUCTNAME}    ${search_product}
    Element Text Should Be    ${FIRST_PRODUCTDESC}    ${search_desc}
    Element Text Should Be    ${FIRST_PRODUCTPRICE}   ${search_price}
    Set Screenshot Directory  ${DIR_SS}
    Capture Page Screenshot