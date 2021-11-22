trigger SummaryVariableTrigger on SBQQ__SummaryVariable__c(before insert, before update) {
    new ExternalIdService(SBQQ__SummaryVariable__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
