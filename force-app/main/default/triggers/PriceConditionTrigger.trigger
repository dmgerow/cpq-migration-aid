trigger PriceConditionTrigger on SBQQ__PriceCondition__c(before insert, before update) {
    new ExternalIdService(SBQQ__PriceCondition__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
