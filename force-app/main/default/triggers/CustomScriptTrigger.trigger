trigger CustomScriptTrigger on SBQQ__CustomScript__c(before insert, before update) {
    new ExternalIdService(SBQQ__CustomScript__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
