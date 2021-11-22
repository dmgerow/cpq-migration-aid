trigger ProcessInputConditionTrigger on SBQQ__ProcessInputCondition__c(
    before insert,
    before update
) {
    new ExternalIdService(SBQQ__ProcessInputCondition__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
