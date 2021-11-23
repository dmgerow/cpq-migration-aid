# cpq-migration-aid

Set of metadata that can be deployed to a Salesforce org to assist with Salesforce CPQ Data Migration by creating a unique Id on CPQ configuration data.

## Installation Instructions

Install from the [Latest Release page](https://github.com/dmgerow/cpq-migration-aid/releases/latest/).

## Usage Instructions

1. Install in the orgs for which you will be migrating to and from via the Deploy To Salesforce button above
2. If there is currently configuration data in your org, update all records for which you woud like external Ids present
3. Retrieve your records from the source org (they will have external Ids now)
4. Upsert your records to your target org using the external Ids. For relationships, use the relationship's external Id to form the relationship.

## Objects Supported

- SBQQ**AttributeSet**c

- SBQQ**BlockPrice**c

- SBQQ**ColumnMetadata**c

- SBQQ**ConfigurationAttribute**c

- SBQQ**ConfigurationRule**c

- SBQQ**ContractedPrice**c

- SBQQ**Cost**c

- SBQQ**CustomActionCondition**c

- SBQQ**CustomAction**c

- SBQQ**CustomScript**c

- SBQQ**Dimension**c

- SBQQ**DiscountCategory**c

- SBQQ**DiscountSchedule**c

- SBQQ**DiscountTier**c

- SBQQ**ErrorCondition**c

- SBQQ**FavoriteProduct**c

- SBQQ**FavoriteShare**c

- SBQQ**Favorite**c

- SBQQ**FieldSetMetadata**c

- SBQQ**ImportColumn**c

- SBQQ**ImportFormat**c

- SBQQ**LineColumn**c

- SBQQ**Localization**c

- SBQQ**LookupData**c

- SBQQ**LookupQuery**c

- SBQQ**OptionConstraint**c

- SBQQ**PriceAction**c

- SBQQ**PriceCondition**c

- SBQQ**PriceRule**c

- SBQQ**PricingGuidanceTier**c

- SBQQ**PricingGuidance**c

- SBQQ**ProcessInputCondition**c

- SBQQ**ProcessInput**c

- SBQQ**ProductAction**c

- SBQQ**ProductAttributeSet**c

- SBQQ**ProductAttribute**c

- SBQQ**ProductFeature**c

- SBQQ**ProductOption**c

- SBQQ**ProductRule**c

- SBQQ**QuoteProcess**c

- SBQQ**QuoteTemplate**c

- SBQQ**QuoteTerm**c

- SBQQ**RelatedContent**c

- SBQQ**SearchFilter**c

- SBQQ**SolutionGroup**c

- SBQQ**SummaryVariable**c

- SBQQ**TemplateContent**c

- SBQQ**TemplateSection**c

- SBQQ**TermCondition**c

- SBQQ**Theme**c

- SBQQ**UpgradeSource**c

- Product2

- Pricebook2
