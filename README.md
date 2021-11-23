# CPQ Migration Aid

Set of metadata that can be deployed to a Salesforce org to assist with Salesforce CPQ Data Migration by creating a unique Id on CPQ configuration data.

Consider using the [Salesforce Data Loader SFDX Plugin](https://github.com/forcedotcom/SFDX-Data-Move-Utility) to perform scripted configuration data migration.

Note: Triggers are not supported on PricebookEntries as of the Winter '22 release so external IDs need to be manually populated.

## Installation Instructions

Install from the [Latest Release page](https://github.com/dmgerow/cpq-migration-aid/releases/latest/).

## Usage Instructions

1. Install in the orgs for which you will be migrating to and from
2. If there is currently configuration data in your org, update all records for which you woud like external Ids present
3. Retrieve your records from the source org (they will have external Ids now)
4. Upsert your records to your target org using the external Ids. For relationships, use the relationship's external Id to form the relationship.

## Objects Supported

- AttributeSet

- BlockPrice

- ColumnMetadata

- ConfigurationAttribute

- ConfigurationRule

- ContractedPrice

- Cost

- CustomActionCondition

- CustomAction

- CustomScript

- Dimension

- DiscountCategory

- DiscountSchedule

- DiscountTier

- ErrorCondition

- FavoriteProduct

- FavoriteShare

- Favorite

- FieldSetMetadata

- ImportColumn

- ImportFormat

- LineColumn

- Localization

- LookupData

- LookupQuery

- OptionConstraint

- PriceAction

- PriceCondition

- PriceRule

- PricingGuidanceTier

- PricingGuidance

- ProcessInputCondition

- ProcessInput

- ProductAction

- ProductAttributeSet

- ProductAttribute

- ProductFeature

- ProductOption

- ProductRule

- QuoteProcess

- QuoteTemplate

- QuoteTerm

- RelatedContent

- SearchFilter

- SolutionGroup

- SummaryVariable

- TemplateContent

- TemplateSection

- TermCondition

- Theme

- UpgradeSource

- Product2

- Pricebook2
