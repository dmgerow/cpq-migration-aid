trigger PricingGuidanceTrigger on SBQQ__PricingGuidance__c(before insert, before update) {
    new ExternalIdService(SBQQ__PricingGuidance__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
