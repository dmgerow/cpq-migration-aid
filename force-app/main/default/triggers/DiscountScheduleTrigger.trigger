trigger DiscountScheduleTrigger on SBQQ__DiscountSchedule__c(before insert, before update) {
    new ExternalIdService(SBQQ__DiscountSchedule__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
