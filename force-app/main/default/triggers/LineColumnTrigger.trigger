trigger LineColumnTrigger on SBQQ__LineColumn__c(before insert, before update) {
    new ExternalIdService(SBQQ__LineColumn__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
