trigger CustomActionConditionTrigger on SBQQ__CustomActionCondition__c(
    before insert,
    before update
) {
    new ExternalIdService(SBQQ__CustomActionCondition__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
