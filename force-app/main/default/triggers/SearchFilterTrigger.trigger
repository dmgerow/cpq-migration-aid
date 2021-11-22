trigger SearchFilterTrigger on SBQQ__SearchFilter__c(before insert, before update) {
    new ExternalIdService(SBQQ__SearchFilter__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
