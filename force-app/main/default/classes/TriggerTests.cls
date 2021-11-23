@isTest
private class TriggerTests {
    @isTest
    static void attributeSet() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__AttributeSet__c(Name = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__AttributeSet__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void blockPrice() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__BlockPrice__c(Name = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__BlockPrice__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void columnMetadata() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__FieldSetMetadata__c fieldMeta = new SBQQ__FieldSetMetadata__c(
            SBQQ__FieldSet__c = 'SBQQ__EditLines'
        );
        insert fieldMeta;
        insert new SBQQ__ColumnMetadata__c(
            SBQQ__FieldSetMetadata__c = fieldMeta.Id,
            SBQQ__FieldColumnSize__c = 75.0,
            SBQQ__FieldName__c = 'SBQQ__NetTotal__c'
        );
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__ColumnMetadata__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void configurationAttribute() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__ConfigurationAttribute__c(Name = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__ConfigurationAttribute__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void configurationRule() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__ProductRule__c rule = new SBQQ__ProductRule__c(
            Name = 'Test',
            SBQQ__EvaluationEvent__c = 'Load',
            SBQQ__Scope__c = 'Product'
        );
        insert rule;
        insert new SBQQ__ConfigurationRule__c(SBQQ__ProductRule__c = rule.Id);
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__ConfigurationRule__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void contractedPrice() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        Account testAcc = new Account(Name = 'Test Account');
        insert testAcc;
        insert new SBQQ__ContractedPrice__c(
            SBQQ__Price__c = 0.0,
            SBQQ__FilterField__c = 'Product',
            SBQQ__Operator__c = 'equals',
            SBQQ__Account__c = testAcc.Id
        );
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__ContractedPrice__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void cost() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__Cost__c(SBQQ__UnitCost__c = 0.0);
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__Cost__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void customAction() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__CustomAction__c(Name = 'Test', SBQQ__DisplayOrder__c = 10.0);
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__CustomAction__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void customActionCondition() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__CustomAction__c action = new SBQQ__CustomAction__c(
            Name = 'Test',
            SBQQ__DisplayOrder__c = 10.0
        );
        insert action;
        insert new SBQQ__CustomActionCondition__c(Name = 'Test', SBQQ__CustomAction__c = action.Id);
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__CustomActionCondition__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void customScript() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__CustomScript__c(Name = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__CustomScript__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void dimension() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__Dimension__c(Name = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__Dimension__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void discountCategory() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__DiscountCategory__c(Name = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__DiscountCategory__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void discountSchedule() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__DiscountSchedule__c(Name = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__DiscountSchedule__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void discountTier() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__DiscountSchedule__c sched = new SBQQ__DiscountSchedule__c(Name = 'test');
        insert sched;
        insert new SBQQ__DiscountTier__c(Name = 'Test', SBQQ__Schedule__c = sched.Id);
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__DiscountTier__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void errorCondition() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__ProductRule__c rule = new SBQQ__ProductRule__c(
            Name = 'Test',
            SBQQ__EvaluationEvent__c = 'Load',
            SBQQ__Scope__c = 'Product'
        );
        insert rule;
        insert new SBQQ__ErrorCondition__c(
            SBQQ__TestedField__c = 'Unit Price',
            SBQQ__Operator__c = 'equals',
            SBQQ__Rule__c = rule.Id
        );
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__ErrorCondition__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void favorite() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__Favorite__c(Name = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__Favorite__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void favoriteProduct() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__Favorite__c fav = new SBQQ__Favorite__c(Name = 'Test');
        insert fav;
        insert new SBQQ__FavoriteProduct__c(Name = 'Test', SBQQ__Favorite__c = fav.Id);
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__FavoriteProduct__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void favoriteShare() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__Favorite__c fav = new SBQQ__Favorite__c(Name = 'Test');
        insert fav;
        insert new SBQQ__FavoriteShare__c(SBQQ__Favorite__c = fav.Id);
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__FavoriteShare__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void fieldSetMetadata() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__FieldSetMetadata__c(SBQQ__FieldSet__c = 'SBQQ__EditLines');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__FieldSetMetadata__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void importColumn() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__ImportFormat__c format = new SBQQ__ImportFormat__c(
            SBQQ__ImportFormatName__c = 'Test'
        );
        insert format;
        insert new SBQQ__ImportColumn__c(
            Name = 'Test',
            SBQQ__ImportFormat__c = format.Id,
            SBQQ__ColumnIndex__c = 10.0
        );
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__ImportColumn__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void importFormat() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__ImportFormat__c(SBQQ__ImportFormatName__c = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__ImportFormat__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void lineColumn() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__QuoteTemplate__c template = new SBQQ__QuoteTemplate__c(Name = 'Test');
        insert template;
        insert new SBQQ__LineColumn__c(
            Name = 'Test',
            SBQQ__Template__c = template.Id,
            SBQQ__DisplayOrder__c = 10.0,
            SBQQ__FieldName__c = 'SBQQ__NetTotal__c',
            SBQQ__Width__c = 10.0
        );
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__LineColumn__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void localization() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__Localization__c();
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__Localization__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void lookupData() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__LookupData__c();
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__LookupData__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void lookupQuery() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__LookupQuery__c();
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__LookupQuery__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void optionConstraint() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__ProductOption__c opt = new SBQQ__ProductOption__c(SBQQ__Number__c = 10.0);
        insert opt;
        insert new SBQQ__OptionConstraint__c(Name = 'Test', SBQQ__ConstrainedOption__c = opt.Id);
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__OptionConstraint__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void priceAction() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__PriceRule__c rule = new SBQQ__PriceRule__c(Name = 'Test');
        insert rule;
        insert new SBQQ__PriceAction__c(SBQQ__Rule__c = rule.Id);
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__PriceAction__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void priceCondition() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__PriceRule__c rule = new SBQQ__PriceRule__c(Name = 'Test');
        insert rule;
        insert new SBQQ__PriceCondition__c(SBQQ__Rule__c = rule.Id, SBQQ__TestedFormula__c = 'xyz');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__PriceCondition__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void priceRule() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__PriceRule__c(Name = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__PriceRule__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void pricingGuidanceTier() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__PricingGuidance__c guidance = new SBQQ__PricingGuidance__c(Name = 'Test');
        insert guidance;
        insert new SBQQ__PricingGuidanceTier__c(
            Name = 'Test',
            SBQQ__PricingGuidance__c = guidance.Id
        );
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__PricingGuidanceTier__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void pricingGuidance() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__PricingGuidance__c(Name = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__PricingGuidance__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void processInputCondition() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__QuoteProcess__c process = new SBQQ__QuoteProcess__c(Name = 'Test');
        insert process;
        SBQQ__ProcessInput__c input = new SBQQ__ProcessInput__c(
            Name = 'Test',
            SBQQ__QuoteProcess__c = process.Id
        );
        insert input;
        insert new SBQQ__ProcessInputCondition__c(
            Name = 'Test',
            SBQQ__ProcessInput__c = input.Id,
            SBQQ__MasterProcessInput__c = input.Id,
            SBQQ__Value__c = 'x'
        );
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__ProcessInputCondition__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void processInput() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__QuoteProcess__c process = new SBQQ__QuoteProcess__c(Name = 'Test');
        insert process;
        insert new SBQQ__ProcessInput__c(Name = 'Test', SBQQ__QuoteProcess__c = process.Id);
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__ProcessInput__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void productAction() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__ProductRule__c rule = new SBQQ__ProductRule__c(
            Name = 'Test',
            SBQQ__EvaluationEvent__c = 'Load',
            SBQQ__Scope__c = 'Product'
        );
        insert rule;
        insert new SBQQ__ProductAction__c(SBQQ__Rule__c = rule.Id);
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__ProductAction__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void productAttributeSet() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__ProductAttributeSet__c(SBQQ__Sequence__c = 10.0);
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__ProductAttributeSet__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void productAttribute() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__ConfigurationAttribute__c attribute = new SBQQ__ConfigurationAttribute__c(
            Name = 'Test'
        );
        insert attribute;
        insert new SBQQ__ProductAttribute__c(
            SBQQ__Sequence__c = 10.0,
            SBQQ__Attribute__c = attribute.Id
        );
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__ProductAttribute__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void productFeature() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__ProductFeature__c(Name = 'Test', SBQQ__Number__c = 10.0);
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__ProductFeature__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void productOption() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__ProductOption__c(SBQQ__Number__c = 10.0);
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__ProductOption__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void productRule() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__ProductRule__c(
            Name = 'Test',
            SBQQ__EvaluationEvent__c = 'Load',
            SBQQ__Scope__c = 'Product'
        );
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__ProductRule__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void quoteProcess() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__QuoteProcess__c(Name = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__QuoteProcess__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void quoteTemplate() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__QuoteTemplate__c(Name = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__QuoteTemplate__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void quoteTerm() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__QuoteTerm__c(SBQQ__PrintOrder__c = 1.0);
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__QuoteTerm__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void relatedContent() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__RelatedContent__c(Name = 'Test', SBQQ__ExternalId__c = 'test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__RelatedContent__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void searchFilter() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__SearchFilter__c(Name = 'Test', SBQQ__DisplayOrder__c = 1.0);
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__SearchFilter__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void solutionGroup() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__SolutionGroup__c(Name = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__SolutionGroup__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void summaryVariable() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__SummaryVariable__c(Name = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__SummaryVariable__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void termCondition() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__QuoteTerm__c term = new SBQQ__QuoteTerm__c(SBQQ__PrintOrder__c = 1.0);
        insert term;
        insert new SBQQ__TermCondition__c(
            SBQQ__QuoteTerm__c = term.Id,
            SBQQ__TestedField__c = 'Id',
            SBQQ__Operator__c = 'equals'
        );
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__TermCondition__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void templateContent() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__TemplateContent__c(Name = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__TemplateContent__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void templateSection() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        SBQQ__QuoteTemplate__c template = new SBQQ__QuoteTemplate__c(Name = 'Test');
        insert template;
        insert new SBQQ__TemplateSection__c(Name = 'Test', SBQQ__Template__c = template.Id);
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__TemplateSection__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void theme() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__Theme__c(Name = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__Theme__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void upgradeSource() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new SBQQ__UpgradeSource__c(Name = 'Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__UpgradeSource__c WHERE cpqma__ExternalId__c != NULL]
        );
    }

    @isTest
    static void pricebook() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        update new Pricebook2(Id = Test.getStandardPricebookId());
        Test.stopTest();
        System.assertEquals(1, [SELECT COUNT() FROM Pricebook2 WHERE cpqma__ExternalId__c != NULL]);
    }

    @isTest
    static void Product2() {
        Test.startTest();
        SBQQ.TriggerControl.disable();
        insert new Product2(Name = 'Test');
        Test.stopTest();
        System.assertEquals(1, [SELECT COUNT() FROM Product2 WHERE cpqma__ExternalId__c != NULL]);
    }
}
