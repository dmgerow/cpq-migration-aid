trigger ImportFormatTrigger on SBQQ__ImportFormat__c(before insert, before update) {
    new ExternalIdService(SBQQ__ImportFormat__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
