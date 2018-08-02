# cpq-migration-aid

Deploy to SFDX Scratch Org:
[![Deploy](https://deploy-to-sfdx.com/dist/assets/images/DeployToSFDX.svg)](https://deploy-to-sfdx.com)

Set of metadata that can be deployed to a Salesforce org to assist with Salesforce CPQ Data Migration by creating a unique Id (concatenation of your org Id and the record Id) on CPQ configuration data.

Note: This release now requires v208 (Summer '17) or higher. 

Note: External Ids on Price Books and Price Book Entries are not automatically populated because workflow rules are not compatible with those objects as of Winter 17.

## Installation Instructions
Make a temporary directory to convert your source
```
mkdir src
```
Convert project to metadata API format
```
sfdx force:source:convert -d src/ --packagename triggerframework
```

Authenticate to your org

Sandbox
```
sfdx force:auth:web:login --setalias <org_alias> --instanceurl https://test.salesforce.com
```
Production
```
sfdx force:auth:web:login --setalias <org_alias> --instanceurl https://login.salesforce.com
```
Custom Domain
```
sfdx force:auth:web:login --setalias <org_alias> --instanceurl https://mydomain.my.salesforce.com
```

Deploy to Org
```
sfdx force:mdapi:deploy -d src/ -l RunSpecifiedTests -r LogTest,SessionControllerTest --wait 30 -u "org_alias"
```

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

## Contribution Notes
Please note that you will need to have Salesforce CPQ installed in your scratch org before being able to deploy this. 
1. Get the latest package ID of the CPQ Package by going [here](https://steelbrick2.force.com/apex/installpremium), copying the link address of the installation link for the package version you want, and copying down the ID shown after ```p0=```. An example is below:
```
https://login.salesforce.com/packaging/installPackage.apexp?p0=04t610000004RtwAAE
```
2. Execute the following command after creating your scratch org
```
sfdx force:package:install --package [packageId] -w 30
```
Where ```[packageId]``` is the package ID you copied down in step 1.

3. Push source to scratch org and proceed with development
