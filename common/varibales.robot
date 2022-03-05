*** Variables ***
${URL}                  http://automationpractice.com/index.php
${URL_SEARCH}           http://automationpractice.com/index.php?controller=search&orderby=position&orderway=desc&search_query=Faded+Short+Sleeve+T-shirts&submit_search=

${MENU_WOMEN}           xpath=//a[@title="Women"]
${SUBMENU_WM_TSHIRTS}   xpath=//*[contains(@class,'submenu')]//*/a[@title="T-shirts"]

${CAT_TSHIRT}           xpath=//*[@class="cat-name"][contains(text(),'T-shirts')]
${NAV_SEARCH}           xpath=//*[@class="navigation_page"][contains(text(),'Search')]

${FIRST_PRODUCTNAME}    xpath=//*[contains(@class,'product_list grid row')]//*[@class="product-name"][1]
${FIRST_PRODUCTDESC}    xpath=//*[contains(@class,'product_list grid row')]//*[@class="product-desc"][1]
${FIRST_PRODUCTPRICE}   xpath=//*[contains(@class,'product_list grid row')]//*[@class="right-block"]//*[@class="content_price"][1]//*[@itemprop="price"]
${INPUT_SEARCH}         xpath=//input[@id="search_query_top"]
${BUTTON_SEARCH}        xpath=//button[@name="submit_search"]

${DIR_SS}               D:\\Tukta\\QA Technical Test\\02\\Assignement_1_UIAutomation\\results