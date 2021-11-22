trigger AttributeSetTrigger on SBQQ__AttributeSet__c(before insert, before update) {
    new ExternalIdService(SBQQ__AttributeSet__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
