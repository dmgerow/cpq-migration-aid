trigger ThemeTrigger on SBQQ__Theme__c(before insert, before update) {
    new ExternalIdService(SBQQ__Theme__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
