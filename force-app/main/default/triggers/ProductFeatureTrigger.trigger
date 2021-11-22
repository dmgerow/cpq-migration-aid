trigger ProductFeatureTrigger on SBQQ__ProductFeature__c(before insert, before update) {
    new ExternalIdService(SBQQ__ProductFeature__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
