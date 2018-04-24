# cpq-migration-aid

<a href="https://githubsfdeploy.herokuapp.com">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/deploy.png">
</a>

Set of metadata that can be deployed to a Salesforce org to assist with Salesforce CPQ Data Migration by creating a unique Id (concatenation of your org Id and the record Id) on CPQ configuration data.

Note: This release now requires v208 (Summer '17) or higher. 

Note: External Ids on Price Books and Price Book Entries are not automatically populated because workflow rules are not compatible with those objects as of Winter 17.

## Usage Instructions
1. Install in the orgs for which you will be migrating to and from via the Deploy To Salesforce button above
2. If there is currently configuration data in your org, update all records for which you woud like external Ids present
3. Retrieve your records from the source org (they will have external Ids now)
4. Upsert your records to your target org using the external Ids. For relationships, use the relationship's external Id to form the relationship. 

## Usage Notes
The following objects are currently supported:
* Product2
* SBQQ__BlockPrice__c
* SBQQ__ConfigurationAttribute__c
* SBQQ__ContractedPrice__c
* SBQQ__ConfigurationRule__c
* SBQQ__CustomAction__c
* SBQQ__CustomActionCondition__c
* SBQQ__CustomScript__c
* SBQQ__Dimension__c
* SBQQ__DiscountSchedule__c
* SBQQ__DiscountTier__c
* SBQQ__ErrorCondition__c
* SBQQ__ImportColumn__c
* SBQQ__ImportFormat__c
* SBQQ__LineColumn__c
* SBQQ__LookupQuery__c
* SBQQ__OptionConstraint__c
* SBQQ__PriceAction__c
* SBQQ__PriceCondition__c
* SBQQ__PriceRule__c
* SBQQ__ProcessInput__c
* SBQQ__ProcessInputCondition__c
* SBQQ__ProcessInputValue__c
* SBQQ__ProductAction__c
* SBQQ__ProductFeature__c
* SBQQ__ProductOption__c
* SBQQ__ProductRule__c
* SBQQ__QuoteProcess__c
* SBQQ__QuoteTemplate__c
* SBQQ__QuoteTerm__c
* SBQQ__SearchFilter__c
* SBQQ__SummaryVariable__c
* SBQQ__TemplateContent__c
* SBQQ__TemplateSection__c
* SBQQ__TermCondition__c
