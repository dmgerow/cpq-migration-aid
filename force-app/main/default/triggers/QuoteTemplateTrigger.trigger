trigger QuoteTemplateTrigger on SBQQ__QuoteTemplate__c(before insert, before update) {
    new ExternalIdService(SBQQ__QuoteTemplate__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
