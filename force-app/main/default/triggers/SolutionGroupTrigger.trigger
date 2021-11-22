trigger SolutionGroupTrigger on SBQQ__SolutionGroup__c(before insert, before update) {
    new ExternalIdService(SBQQ__SolutionGroup__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
