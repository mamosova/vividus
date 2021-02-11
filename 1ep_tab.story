Scenario: Prerequisites: Login to KW
Given I am on a page with the URL 'https://kw-develop-qa.dev-knowledgeworks.altair.com/'
When I wait until element located `By.xpath(//*[@id="username"])` appears
And I enter `${usr}` in field located `By.xpath(//*[@id="username"])`
And I enter `${pwd}` in field located `By.xpath(//*[@id="password"])`
And I click on element located `By.xpath(//*[@id="form-submit"])`
And I wait until element located `By.xpath(//*[@data-test-id="NavigationItem_Library"])` appears
Then field located `By.xpath(//*[@data-test-id="NavigationItem_Library"])` exists

Scenario: Prerequisites: create Pandas EP
Given I am on a page with the URL '${env_url}'
When I wait until element located `By.xpath(//*[@data-test-id="NavigationItem_ExecutionProfiles"])` appears
And I click on element located `By.xpath(//*[@data-test-id="NavigationItem_ExecutionProfiles"])`
And I wait until element located `By.xpath(//*[text()='Add New Execution Profile'])` appears
And I click on element located `By.xpath(//*[text()='Add New Execution Profile'])`
And I wait until element located `By.xpath(//*[text()='Untitled Execution Profile'])` appears
And I click on element located `By.xpath(//*[@data-test-id="executionProfileSelect"])`
And I click on element located `By.xpath(//*[text()='Jupyter Pandas'])`
And I enter `${pandasep_name}` in field located `By.xpath(//*[@name="name"])`
And I wait until element located `By.xpath(//*[@placeholder="JupyterHub URL"])` appears
And I enter `${pandas_url}` in field located `By.xpath(//*[@placeholder="JupyterHub URL"])`
And I click on element located `By.xpath(//*[@data-test-id="saveButton"])`
And I wait until element located `By.xpath(//*[@id="react-root"]/div[2]/div[1]//*[text()='${pandasep_name}'])` appears
Then field located `By.xpath(//*[@id="react-root"]/div[2]/div[1]//*[text()='${pandasep_name}'])` exists

Scenario: Prerequisites: create Pandas EP 2
Given I am on a page with the URL '${env_url}'
When I wait until element located `By.xpath(//*[@data-test-id="NavigationItem_ExecutionProfiles"])` appears
And I click on element located `By.xpath(//*[@data-test-id="NavigationItem_ExecutionProfiles"])`
And I wait until element located `By.xpath(//*[text()='Add New Execution Profile'])` appears
And I click on element located `By.xpath(//*[text()='Add New Execution Profile'])`
And I wait until element located `By.xpath(//*[text()='Untitled Execution Profile'])` appears
And I click on element located `By.xpath(//*[@data-test-id="executionProfileSelect"])`
And I click on element located `By.xpath(//*[text()='Jupyter Pandas'])`
And I enter `${pandasep_name}_2` in field located `By.xpath(//*[@name="name"])`
And I wait until element located `By.xpath(//*[@placeholder="JupyterHub URL"])` appears
And I enter `${pandas_url}` in field located `By.xpath(//*[@placeholder="JupyterHub URL"])`
And I click on element located `By.xpath(//*[@data-test-id="saveButton"])`
And I wait until element located `By.xpath(//*[@id="react-root"]/div[2]/div[1]//*[text()='${pandasep_name}_2'])` appears
Then field located `By.xpath(//*[@id="react-root"]/div[2]/div[1]//*[text()='${pandasep_name}_2'])` exists

Scenario: Prerequisites: create PySpark EP
Given I am on a page with the URL '${env_url}'
When I wait until element located `By.xpath(//*[@data-test-id="NavigationItem_ExecutionProfiles"])` appears
And I click on element located `By.xpath(//*[@data-test-id="NavigationItem_ExecutionProfiles"])`
And I wait until element located `By.xpath(//*[text()='Add New Execution Profile'])` appears
And I click on element located `By.xpath(//*[text()='Add New Execution Profile'])`
And I wait until element located `By.xpath(//*[text()='Untitled Execution Profile'])` appears
And I click on element located `By.xpath(//*[@data-test-id="executionProfileSelect"])`
And I click on element located `By.xpath(//*[text()='Jupyter Pyspark'])`
And I enter `${pysparkep_name}` in field located `By.xpath(//*[@name="name"])`
And I wait until element located `By.xpath(//*[@placeholder="JupyterHub URL"])` appears
And I enter `${pyspark_url}` in field located `By.xpath(//*[@placeholder="JupyterHub URL"])`
And I click on element located `By.xpath(//*[text()='Use Single Sign-On (SSO) authentication'])`
And I enter `${default_ep_usr}` in field located `By.xpath(//*[@placeholder="Add Name"])`
And I enter `${default_ep_pwd}` in field located `By.xpath(//*[@placeholder="Add Password"])`
And I click on element located `By.xpath(//*[@data-test-id="saveButton"])`
And I wait until element located `By.xpath(//*[@id="react-root"]/div[2]/div[1]//*[text()='${pysparkep_name}'])` appears
Then field located `By.xpath(//*[@id="react-root"]/div[2]/div[1]//*[text()='${pysparkep_name}'])` exists

Scenario: Prerequisites: create PySpark EP 2
Given I am on a page with the URL '${env_url}'
When I wait until element located `By.xpath(//*[@data-test-id="NavigationItem_ExecutionProfiles"])` appears
And I click on element located `By.xpath(//*[@data-test-id="NavigationItem_ExecutionProfiles"])`
And I wait until element located `By.xpath(//*[text()='Add New Execution Profile'])` appears
And I click on element located `By.xpath(//*[text()='Add New Execution Profile'])`
And I wait until element located `By.xpath(//*[text()='Untitled Execution Profile'])` appears
And I click on element located `By.xpath(//*[@data-test-id="executionProfileSelect"])`
And I click on element located `By.xpath(//*[text()='Jupyter Pyspark'])`
And I enter `${pysparkep_name}_2` in field located `By.xpath(//*[@name="name"])`
And I wait until element located `By.xpath(//*[@placeholder="JupyterHub URL"])` appears
And I enter `${pyspark_url}` in field located `By.xpath(//*[@placeholder="JupyterHub URL"])`
And I click on element located `By.xpath(//*[text()='Use Single Sign-On (SSO) authentication'])`
And I enter `${default_ep_usr}` in field located `By.xpath(//*[@placeholder="Add Name"])`
And I enter `${default_ep_pwd}` in field located `By.xpath(//*[@placeholder="Add Password"])`
And I click on element located `By.xpath(//*[@data-test-id="saveButton"])`
And I wait until element located `By.xpath(//*[@id="react-root"]/div[2]/div[1]//*[text()='${pysparkep_name}_2'])` appears
Then field located `By.xpath(//*[@id="react-root"]/div[2]/div[1]//*[text()='${pysparkep_name}_2'])` exists

Scenario: Create and open folder
Given I am on a page with the URL 'https://kw-develop-qa.dev-knowledgeworks.altair.com/'
When I wait until element located `By.xpath(//*[@data-test-id="NavigationItem_Library"])` appears
And I click on element located `By.xpath(//*[@data-test-id="NavigationItem_Library"])`
And I wait until element located `By.xpath(//*[@data-test-id="addNewButton"])` appears
And I click on element located `By.xpath(//*[@data-test-id="addNewButton"])`
And I click on element located `By.xpath(//*[@data-test-id="addFolder"])`
And I clear field located `By.xpath(//*[@data-test-id="createDialogNameInput"])` using keyboard
And I enter `${foldername}` in field located `By.xpath(//*[@data-test-id="createDialogNameInput"])`
And I click on element located `By.xpath(//*[@data-test-id="createAndOpenButton"])`
And I wait until element located `By.xpath(//*[@data-test-id="breadcrumbs"]//*[text()='${foldername}'])` appears
Then field located `By.xpath(//*[@data-test-id="breadcrumbs"]//*[text()='${foldername}'])` exists

Scenario: Create and open wf
Given I am on a page with the URL 'https://kw-develop-qa.dev-knowledgeworks.altair.com/'
When I wait until element located `By.xpath(//*[@data-test-id="addNewButton"])` appears
And I click on element located `By.xpath(//*[@data-test-id="addNewButton"])`
And I click on element located `By.xpath(//*[@data-test-id="addWorkflow"])`
And I clear field located `By.xpath(//*[@data-test-id="createDialogNameInput"])` using keyboard
And I enter `${wfname}` in field located `By.xpath(//*[@data-test-id="createDialogNameInput"])`
And I click on element located `By.xpath(//*[@data-test-id="createAndOpenButton"])`
And I wait until element located `By.xpath(//*[@data-test-id="rename-tab_${wfname}"]/..)` appears
Then field located `By.xpath(//*[text()='Start building your workflow by dragging nodes from the palette to the canvas.'])` exists

Scenario: Link Pandas EP
Given I am on a page with the URL 'https://kw-develop-qa.dev-knowledgeworks.altair.com/'
When I wait until element located `By.xpath(//*[@id="react-root"]//aside//*[contains(@class, "selected")]/*[text()='Nodes'])` appears
And I click on element located `By.xpath(//*[@data-test-id="paletteTab_1"])`
And I wait until element located `By.xpath(//*[@data-test-id="linkedExecutionProfileDropdown"])` appears
And I click on element located `By.xpath(//*[@data-test-id="linkedExecutionProfileDropdown"])`
And I click on element located `By.xpath(//*[@data-test-id="newExecutionProfile" and text()='Existing Execution Profile'])`
And I click on element located `By.xpath(//*[text()='Select Execution Profile']/..)`
And I click on element located `By.xpath(//*[text()='${pandasep_name}']/ancestor::button)`
And I wait until element located `By.xpath(//*[@id="react-root"]//aside/table/tbody//*[text()='${pandasep_name}'])` appears
Then field located `By.xpath(//*[@id="react-root"]//aside/table/tbody//*[text()='${pandasep_name}'])` exists

Scenario: Link Pyspark EP
Given I am on a page with the URL 'https://kw-develop-qa.dev-knowledgeworks.altair.com/'
When I wait until element located `By.xpath(//*[@id="react-root"]//aside//*[contains(@class, "selected")]/*[text()='Nodes'])` appears
And I click on element located `By.xpath(//*[@data-test-id="paletteTab_1"])`
And I wait until element located `By.xpath(//*[@data-test-id="linkedExecutionProfileDropdown"])` appears
And I click on element located `By.xpath(//*[@data-test-id="linkedExecutionProfileDropdown"])`
And I click on element located `By.xpath(//*[@data-test-id="newExecutionProfile" and text()='Existing Execution Profile'])`
And I click on element located `By.xpath(//*[text()='Select Execution Profile']/..)`
And I click on element located `By.xpath(//*[text()='${pysparkep_name}_2']/ancestor::button)`
And I wait until element located `By.xpath(//*[@id="react-root"]//aside/table/tbody//*[text()='${pysparkep_name}_2'])` appears
Then field located `By.xpath(//*[@id="react-root"]//aside/table/tbody//*[text()='${pysparkep_name}_2'])` exists

Scenario: Postcondition: delete created EPs
Given I am on a page with the URL '${env_url}'
When I wait until element located `By.xpath(//*[@data-test-id="NavigationItem_ExecutionProfiles"])` appears
And I click on element located `By.xpath(//*[@data-test-id="NavigationItem_ExecutionProfiles"])`
And I wait until element located `By.xpath(//*[text()='Add New Execution Profile'])` appears
And I click on element located `By.xpath(//tbody//*[text()='<profile>']/ancestor::tr//*[@data-test-id="menu"])`
And I click on element located `By.xpath(//*[text()='Remove'])`
And I click on element located `By.xpath(//*[contains(text(), 'Yes')])`
And I wait until element located `By.xpath(//*[text()='Execution Profile Name']/ancestor::table/tbody//*[text()='<profile>'])` disappears
Then field located `By.xpath(//*[text()='Execution Profile Name']/ancestor::table/tbody//*[text()='<profile>'])` does not exist
Examples:
|profile            |
|${pandasep_name}   |
|${pandasep_name}_2 |
|${pysparkep_name}  |
|${pysparkep_name}_2|
