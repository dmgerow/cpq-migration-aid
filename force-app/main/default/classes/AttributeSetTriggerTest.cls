@isTest
private class AttributeSetTriggerTest {
    @isTest
    static void setExternalId() {
        Test.startTest();
        insert new SBQQ__AttributeSet__c(Name = 'Attribute Test');
        Test.stopTest();
        System.assertEquals(
            1,
            [SELECT COUNT() FROM SBQQ__AttributeSet__c WHERE cpqma__ExternalId__c != NULL]
        );
    }
}
