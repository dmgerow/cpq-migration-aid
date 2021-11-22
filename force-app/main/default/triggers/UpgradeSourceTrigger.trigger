trigger UpgradeSourceTrigger on SBQQ__UpgradeSource__c(before insert, before update) {
    new ExternalIdService(SBQQ__UpgradeSource__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
