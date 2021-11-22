trigger ProductRuleTrigger on SBQQ__ProductRule__c(before insert, before update) {
    new ExternalIdService(SBQQ__ProductRule__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
