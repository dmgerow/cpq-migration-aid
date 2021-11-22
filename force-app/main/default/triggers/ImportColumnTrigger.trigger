trigger ImportColumnTrigger on SBQQ__ImportColumn__c(before insert, before update) {
    new ExternalIdService(SBQQ__ImportColumn__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
