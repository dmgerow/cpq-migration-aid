trigger ProductActionTrigger on SBQQ__ProductAction__c(before insert, before update) {
    new ExternalIdService(SBQQ__ProductAction__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
