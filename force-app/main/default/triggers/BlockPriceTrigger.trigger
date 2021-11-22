trigger BlockPriceTrigger on SBQQ__BlockPrice__c(before insert, before update) {
    new ExternalIdService(SBQQ__BlockPrice__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
