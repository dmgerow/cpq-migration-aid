trigger DiscountTierTrigger on SBQQ__DiscountTier__c(before insert, before update) {
    new ExternalIdService(SBQQ__DiscountTier__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
