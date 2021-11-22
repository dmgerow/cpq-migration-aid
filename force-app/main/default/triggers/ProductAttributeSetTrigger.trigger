trigger ProductAttributeSetTrigger on SBQQ__ProductAttributeSet__c(before insert, before update) {
    new ExternalIdService(SBQQ__ProductAttributeSet__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
