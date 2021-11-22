@isTest
private class ExternalIdServiceTest {
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

    @isTest
    static void isBlankExternalId() {
        Test.startTest();
        System.assert(
            new ExternalIdService(SBQQ__AttributeSet__c.getSObjectType())
                .isBlankExternalId(new SBQQ__AttributeSet__c(Name = 'Attribute Test'))
        );
        Test.stopTest();
    }

    @isTest
    static void isNewClone() {
        Test.startTest();
        System.assert(
            !new ExternalIdService(SBQQ__AttributeSet__c.getSObjectType())
                .isNewClone(new SBQQ__AttributeSet__c(Name = 'Attribute Test'))
        );
        Test.stopTest();
    }
}
