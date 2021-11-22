trigger OptionConstraintTrigger on SBQQ__OptionConstraint__c(before insert, before update) {
    new ExternalIdService(SBQQ__OptionConstraint__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
