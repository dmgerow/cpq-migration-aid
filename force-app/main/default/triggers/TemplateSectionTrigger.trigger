trigger TemplateSectionTrigger on SBQQ__TemplateSection__c(before insert, before update) {
    new ExternalIdService(SBQQ__TemplateSection__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
