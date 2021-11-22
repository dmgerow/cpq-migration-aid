trigger LookupDataTrigger on SBQQ__LookupData__c(before insert, before update) {
    new ExternalIdService(SBQQ__LookupData__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
