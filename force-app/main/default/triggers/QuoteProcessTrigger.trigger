trigger QuoteProcessTrigger on SBQQ__QuoteProcess__c(before insert, before update) {
    new ExternalIdService(SBQQ__QuoteProcess__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
