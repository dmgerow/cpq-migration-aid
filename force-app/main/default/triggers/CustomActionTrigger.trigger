trigger CustomActionTrigger on SBQQ__CustomAction__c(before insert, before update) {
    new ExternalIdService(SBQQ__CustomAction__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
