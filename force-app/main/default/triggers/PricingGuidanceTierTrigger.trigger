trigger PricingGuidanceTierTrigger on SBQQ__PricingGuidanceTier__c(before insert, before update) {
    new ExternalIdService(SBQQ__PricingGuidanceTier__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
