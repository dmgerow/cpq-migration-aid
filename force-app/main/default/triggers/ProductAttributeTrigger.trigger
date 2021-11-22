trigger ProductAttributeTrigger on SBQQ__ProductAttribute__c(before insert, before update) {
    new ExternalIdService(SBQQ__ProductAttribute__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
