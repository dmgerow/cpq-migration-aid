trigger RelatedContentTrigger on SBQQ__RelatedContent__c(before insert, before update) {
    new ExternalIdService(SBQQ__RelatedContent__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
