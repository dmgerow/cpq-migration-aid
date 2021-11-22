trigger ColumnMetadataTrigger on SBQQ__ColumnMetadata__c(before insert, before update) {
    new ExternalIdService(SBQQ__ColumnMetadata__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
