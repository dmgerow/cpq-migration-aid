trigger FavoriteProductTrigger on SBQQ__FavoriteProduct__c(before insert, before update) {
    new ExternalIdService(SBQQ__FavoriteProduct__c.getSobjectType())
        .setExternalIds((List<Sobject>) Trigger.new);
}
