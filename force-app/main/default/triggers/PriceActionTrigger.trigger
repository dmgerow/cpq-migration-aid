trigger PriceActionTrigger on SBQQ__PriceAction__c(before insert, before update) {
    new ExternalIdService(SBQQ__PriceAction__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
