Meta:
   @proxy

Scenario: Open the About page and verify application version
Given I am on the main application page
When I add `${username}` to field located `By.id(username)`
When I add `${password}` to field located `By.id(password)`
When I click on element located `By.id(form-submit)`
Then an element with the id 'form-submit' disappears
When I wait until element located `By.xpath(//*[@data-test-id='NavigationItem_Help'])` appears
When I click on element located `By.xpath(//*[@data-test-id='NavigationItem_Help'])`
When I click on element located `By.xpath(//*[@data-test-id='aboutLink'])`
When I wait until element located `By.xpath(//*[@class='_3AnDEvBvJagiybX_0y4mah _151mGGgvfGrs3KNRj5nY2p LkSArH3Pyfh2MaMcqo-d3'])` contains text '2020'

Scenario: Click on the "Download" link
When I click on element located `By.xpath(//*[@class='button_Button_module_button__473b7c79 styles_typography_bodyRegular__485e5c39 textButton_TextButton_module_button__fdd31c9b styles_typography_linksRegular__485e5c39 smartButton_SmartButton_module_smartButton__6408f0be _2qsXbTwkWsoNAVNf9NrU9l'])`
When I capture HTTP GET request with URL pattern `https://kw-dev-hotfix-qa\.dev-knowledgeworks.altair\.com/api/about/download\?locale=en&zoneOffset=3` and save request data to SCENARIO variable `test1`
Then `${test1.requestBody}` is not equal to `null`
Then element located 'By.xpath(//*[@class='svgIcon_SvgIcon_module_svgIcon__acaf0c95 svgIcon_SvgIcon_module_small__acaf0c95 spinner_Spinner_module_spinner__616d74c9 smartIcon_SmartIcon_module_progressIcon__e6ace53e'])' disappears in 'PT10S'
