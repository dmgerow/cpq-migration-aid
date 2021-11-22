trigger FavoriteShareTrigger on SBQQ__FavoriteShare__c(before insert, before update) {
    new ExternalIdService(SBQQ__FavoriteShare__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
