trigger FieldSetMetadataTrigger on SBQQ__FieldSetMetadata__c(before insert, before update) {
    new ExternalIdService(SBQQ__FieldSetMetadata__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
