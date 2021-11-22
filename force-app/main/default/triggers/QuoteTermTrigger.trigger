trigger QuoteTermTrigger on SBQQ__QuoteTerm__c(before insert, before update) {
    new ExternalIdService(SBQQ__QuoteTerm__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
