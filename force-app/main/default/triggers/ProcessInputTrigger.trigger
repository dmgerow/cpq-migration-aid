trigger ProcessInputTrigger on SBQQ__ProcessInput__c(before insert, before update) {
    new ExternalIdService(SBQQ__ProcessInput__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
