trigger CostTrigger on SBQQ__Cost__c(before insert, before update) {
    new ExternalIdService(SBQQ__Cost__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
