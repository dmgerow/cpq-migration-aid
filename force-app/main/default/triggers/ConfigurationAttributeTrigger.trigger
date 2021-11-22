trigger ConfigurationAttributeTrigger on SBQQ__ConfigurationAttribute__c(
    before insert,
    before update
) {
    new ExternalIdService(SBQQ__ConfigurationAttribute__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
