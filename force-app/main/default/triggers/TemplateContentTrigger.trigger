trigger TemplateContentTrigger on SBQQ__TemplateContent__c(before insert, before update) {
    new ExternalIdService(SBQQ__TemplateContent__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
