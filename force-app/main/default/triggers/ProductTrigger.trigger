trigger ProductTrigger on Product2(before insert, before update) {
    new ExternalIdService(Product2.getSobjectType()).setExternalIds((List<Sobject>) Trigger.new);
}
