trigger ProductOptionTrigger on SBQQ__ProductOption__c(before insert, before update) {
    new ExternalIdService(SBQQ__ProductOption__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
