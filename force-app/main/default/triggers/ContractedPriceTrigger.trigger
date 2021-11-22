trigger ContractedPriceTrigger on SBQQ__ContractedPrice__c(before insert, before update) {
    new ExternalIdService(SBQQ__ContractedPrice__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
