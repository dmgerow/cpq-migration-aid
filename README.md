# cpq-migration-aid

<a href="https://githubsfdeploy.herokuapp.com">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/deploy.png">
</a>

Set of metadata that can be deployed to a Salesforce org to assist with Salesforce CPQ Data Migration

Note: External Ids on Price Books and Price Book Entries are not automatically populated because workflow rules are not compatible with those objects as of Winter 17.

The following objects are currently supported:
    * Pricebook2
    * PricebookEntry
    * Product2
    * SBQQ__CustomAction__c
    * SBQQ__CustomActionCondition__c
    * SBQQ__CustomScript__c
    * SBQQ__DiscountSchedule__c
    * SBQQ__ErrorCondition__c
    * SBQQ__LookupQuery__c
    * SBQQ__OptionConstraint__c
    * SBQQ__PriceAction__c
    * SBQQ__PriceCondition__c
    * SBQQ__PriceRule__c
    * SBQQ__ProcessInput__c
    * SBQQ__ProcessInputCondition__c
    * SBQQ__ProductAction__c
    * SBQQ__ProductFeature__c
    * SBQQ__ProductOption__c
    * SBQQ__ProductRule__c
    * SBQQ__QuoteProcess__c
    * SBQQ__QuoteTemplate__c
    * SBQQ__SearchFilter__c
    * SBQQ__SummaryVariable__c
    * SBQQ__TemplateContent__c
    * SBQQ__TemplateSection__c
