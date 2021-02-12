Scenario: Upload a file
Given I am on the main application page
When I add `${username}` to field located `By.id(username)`
When I add `${password}` to field located `By.id(password)`
When I click on element located `By.id(form-submit)`
When I wait until element located `By.xpath(//*[@data-test-id='NavigationItem_Help'])` appears
When I select element located `By.id(uploadFileInput)` and upload file `/story/web/1July.csv`
When I wait until an element with the text '1July.csv' appears
