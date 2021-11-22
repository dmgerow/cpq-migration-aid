trigger PricebookTrigger on Pricebook2(before insert, before update) {
    new ExternalIdService(Pricebook2.getSobjectType()).setExternalIds((List<Sobject>) Trigger.new);
}
