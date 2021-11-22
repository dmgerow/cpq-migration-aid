trigger DimensionTrigger on SBQQ__Dimension__c(before insert, before update) {
    new ExternalIdService(SBQQ__Dimension__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
