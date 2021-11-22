trigger DiscountCategoryTrigger on SBQQ__DiscountCategory__c(before insert, before update) {
    new ExternalIdService(SBQQ__DiscountCategory__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
