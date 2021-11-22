trigger PriceRuleTrigger on SBQQ__PriceRule__c(before insert, before update) {
    new ExternalIdService(SBQQ__PriceRule__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
