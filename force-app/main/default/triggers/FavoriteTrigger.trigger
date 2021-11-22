trigger FavoriteTrigger on SBQQ__Favorite__c(before insert, before update) {
    new ExternalIdService(SBQQ__Favorite__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
