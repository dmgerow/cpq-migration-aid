trigger ConfigurationRuleTrigger on SBQQ__ConfigurationRule__c(before insert, before update) {
    new ExternalIdService(SBQQ__ConfigurationRule__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
