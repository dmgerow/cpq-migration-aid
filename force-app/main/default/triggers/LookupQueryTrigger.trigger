trigger LookupQueryTrigger on SBQQ__LookupQuery__c(before insert, before update) {
    new ExternalIdService(SBQQ__LookupQuery__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
