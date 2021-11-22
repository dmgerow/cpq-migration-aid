trigger LocalizationTrigger on SBQQ__Localization__c(before insert, before update) {
    new ExternalIdService(SBQQ__Localization__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
