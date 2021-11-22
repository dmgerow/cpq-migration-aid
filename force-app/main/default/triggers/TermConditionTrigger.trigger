trigger TermConditionTrigger on SBQQ__TermCondition__c(before insert, before update) {
    new ExternalIdService(SBQQ__TermCondition__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
