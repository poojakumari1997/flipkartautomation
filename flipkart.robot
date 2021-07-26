#python -m robot "filename"

*** Settings ***
Library    SeleniumLibrary
Library    XML


*** Variables ***
${browser}    gc
${url}    https://www.flipkart.com/
${selectedLaptop}    ASUS VivoBook Flip Ryzen 5 Hexa Core - (8 GB/512 GB SSD/Windows 10 Home) TM420UA-EC501TS 2 in 1 Laptop    


*** Keywords ***

Open flipkart webpage
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    2
    
Login with mobile number
    
    ${phno}    Set Variable    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[1]/input[1]
    ${password}    Set Variable    xpath=//input[@type='password']
    Element Should Be Visible    ${phno}
    Element Should Be Enabled    ${phno}

    Input Text    ${phno}   9975846468
    Input Text    ${password}    pooja123
    sleep    1
    Click Button    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[4]/button[1]

Select electronics of choice
    Sleep    5
    Click Element    xpath=//div[contains(text(),'Electronics')]
    
    sleep    1
    # Mouse Over    xpath=//div[contains(text(),'Electronics')]
    # Set Selenium Implicit Wait    30
    # Wait Until Element Is Visible    xpath=//div[contains(text(),'Electronics')]
    
    sleep    3
    Scroll Element Into View    xpath=//div[3]//div[10]//div[1]//div[2]//a[1]//div[1]//img[2]
    sleep    2
    Click Element    xpath=//div[3]//div[10]//div[1]//div[2]//a[1]//div[1]//img[2]

Select laptop of choice
    #Click Element    xpath=/html[1]/body[1]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[1]/div[1]/div[3]/div[2]   
    # ${cnt}    SeleniumLibrary.Get Element Count    class=_2kHMtA
    # Log To Console    ${cnt}

    # FOR    ${j}    IN RANGE    2    ${cnt}    
    #     ${laptop_name}    Get Text    xpath=//body/div[@id='container']/div/div[@class='_36fx1h _6t1WkM _3HqJxg']/div[@class='_1YokD2 _2GoDe3']/div[@class='_1YokD2 _3Mn1Gg']/div[${j}]/div[1]/div[1]/div[1]/a[1]/div[2]/div[1]/div[1]
    #     Log To Console    ${laptop_name}
    #     Scroll Element Into View    xpath=//body/div[@id='container']/div/div[@class='_36fx1h _6t1WkM _3HqJxg']/div[@class='_1YokD2 _2GoDe3']/div[@class='_1YokD2 _3Mn1Gg']/div[${j}]/div[1]/div[1]/div[1]/a[1]/div[2]/div[1]/div[1]
    #     Exit For Loop If    "${laptop_name}" == "${selectedLaptop}"
    # END
    # Set Suite Variable    ${product}    xpath=//body/div[@id='container']/div/div[@class='_36fx1h _6t1WkM _3HqJxg']/div[@class='_1YokD2 _2GoDe3']/div[@class='_1YokD2 _3Mn1Gg']/div[${j}]/div[1]/div[1]/div[1]/a[1]/div[2]/div[1]/div[1]
    # Click Element    ${product}

    Scroll Element Into View    xpath=/html[1]/body[1]/div[1]/div[1]/div[3]/div[5]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/a[1]
    Sleep    1
    Click Element    xpath=/html[1]/body[1]/div[1]/div[1]/div[3]/div[5]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/a[1]

Add to Cart
    sleep    2
    Click Element    xpath=//button[normalize-space()='ADD TO CART']
        

*** Test Cases ***
verify prefered choice of electronic selected
    [Tags]
    Open flipkart webpage
    Login with mobile number
    Select electronics of choice
    Select laptop of choice
    Add to Cart



#//body/div[@id='container']/div/div[@class='_36fx1h _6t1WkM _3HqJxg']/div[@class='_1YokD2 _2GoDe3']/div[@class='_1YokD2 _3Mn1Gg']/div[4]/div[1]/div[1]/div[1]/a[1]/div[2]/div[1]/div[1]
#//body/div[@id='container']/div/div[@class='_36fx1h _6t1WkM _3HqJxg']/div[@class='_1YokD2 _2GoDe3']/div[@class='_1YokD2 _3Mn1Gg']/div[5]/div[1]/div[1]/div[1]/a[1]/div[2]/div[1]/div[1]    
#//body/div[@id='container']/div/div[@class='_36fx1h _6t1WkM _3HqJxg']/div[@class='_1YokD2 _2GoDe3']/div[@class='_1YokD2 _3Mn1Gg']/div[2]/div[1]/div[1]/div[1]/a[1]/div[2]/div[1]/div[1]