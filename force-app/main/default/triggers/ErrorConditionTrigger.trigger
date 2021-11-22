trigger ErrorConditionTrigger on SBQQ__ErrorCondition__c(before insert, before update) {
    new ExternalIdService(SBQQ__ErrorCondition__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
